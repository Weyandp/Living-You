-- ESX = nil
-- TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
ESX = exports["es_extended"]:getSharedObject()


RegisterServerEvent('myDocuments:updateMail')
AddEventHandler('myDocuments:updateMail', function(newmail)
    local xPlayer = ESX.GetPlayerFromId(source)
    -- print('set mail to ' )
    MySQL.Async.execute('UPDATE users SET mainMailadress = @mail WHERE identifier = @identifier', {
        ['@identifier'] = xPlayer.identifier,
        ['@mail'] = newmail,
    })

end)

exports("GetGiveableLicenses", function()
    return cfg.giveableLicenses
end)

function GetGiveableLicenses()
    return cfg.giveableLicenses
end

RegisterServerEvent('myDocuments:showDocumentToSomebody')
AddEventHandler('myDocuments:showDocumentToSomebody', function(playerID, type)
    if playerID ~= nil then
        local xPlayer = ESX.GetPlayerFromId(source)
        local xPlayerTarget = ESX.GetPlayerFromId(playerID)
        if xPlayerTarget ~= nil then
            TriggerClientEvent('myDocuments:showForeignDocument', xPlayerTarget.source, type, xPlayer.source)
        end
    end
end)

-- ESX.RegisterServerCallback('myDocuments:getPlayerLicenses', function(source, cb)
--     local xPlayer = ESX.GetPlayerFromId(source)
--     MySQL.Async.fetchAll('SELECT * FROM user_licenses WHERE owner = @owner', {
--         ['@owner'] = xPlayer.identifier
--     },
--     function(result)
--         cb(result, xPlayer.job.name)
--     end)
-- end)

ESX.RegisterServerCallback('myDocuments:getPlayerLicenses', function(source, cb, target)
    if (target) then source = target end
    local xPlayer = ESX.GetPlayerFromId(source)
    MySQL.Async.fetchAll('SELECT * FROM user_licenses WHERE owner = @owner', {
        ['@owner'] = xPlayer.identifier
    },
    function(result)
        cb(result, xPlayer.job.name)
    end)
end)

ESX.RegisterServerCallback('myDocuments:getSavedDocuments', function(source, cb)
    local xPlayer = ESX.GetPlayerFromId(source)

    MySQL.Async.fetchAll('SELECT * FROM saved_documents WHERE identifier = @identifier', {
        ['@identifier'] = xPlayer.identifier
    },
    function(result)
        if result ~= nil and #result > 0 then
            for k, v in pairs(result) do
                v.data = json.decode(v.data)
            end 
            cb(result)
        else
            cb(nil)
        end
    end)

end)

RegisterServerEvent('myDocuments:saveDocument')
AddEventHandler('myDocuments:saveDocument', function(type, content)
    local xPlayer = ESX.GetPlayerFromId(source)

    local dateString = os.date("%x")
	if cfg.dateFormat == 'de' then
		dateString = os.date("%d.%m.%Y | %H:%M")
	else
		dateString = os.date("%x | %H:%M")
	end

    -- remove doctype
    if content ~= nil then
        table.remove(content, 1)
    end


    MySQL.Async.execute('INSERT INTO saved_documents (identifier, type, data, timestamp) VALUES (@identifier, @type, @data, @timestamp)', {
        ['@identifier'] = xPlayer.identifier,
        ['@type'] = type,
        ['@data'] = json.encode(content),
        ['@timestamp'] = dateString,
    })

end)

RegisterServerEvent('myDocuments:removeObject')
AddEventHandler('myDocuments:removeObject', function(id)
    MySQL.Async.execute('DELETE FROM saved_documents WHERE id = @id', {
        ['@id'] = id,
    })
end)

ESX.RegisterServerCallback('myDocuments:getPlayerDataWithProperties', function(source, cb, targetIdentifier, targetSource)

    local xPlayer = ESX.GetPlayerFromId(source)
    if targetSource ~= nil then
        xPlayer = ESX.GetPlayerFromId(targetSource)
    end
    local playerIdentifier = targetIdentifier or xPlayer.identifier

    local waitingForPropertyResult = false    
    local playerPropertyName = '-'
    local playerPropertyEntering 
    local IDCardNumber = getPlayerIDCardNumber(playerIdentifier)


    MySQL.Async.fetchAll('SELECT * FROM users WHERE identifier = @identifier', {
        ['@identifier'] = playerIdentifier
    },
    function(result)
       
        if #result > 0 then

            if cfg.useMyProperties then
                --
                -- IF USING MYPROPERTIES
                --
                waitingForPropertyResult = true
                MySQL.Async.fetchAll('SELECT property FROM prop_owner WHERE owner = @owner', {
                    ['@owner'] = playerIdentifier
                }, function(propResult)
                    -- print(propResult[1] )
                    if propResult[1] ~= nil or  #propResult > 0 then
            
                        -- the player does have a property
                        MySQL.Async.fetchAll('SELECT label, entering FROM prop WHERE name = @name', {
                            ['@name'] = propResult[1].property
                        }, function(labelResult)
                            if #labelResult > 0 then
                                playerPropertyName = labelResult[1].label
                                playerPropertyEntering = labelResult[1].entering
                                waitingForPropertyResult = false
                                -- print(playerPropertyName)
                            end
                        end)
                    else
                        -- the player doesn't have a property
                        playerPropertyName = 'No property'
                        waitingForPropertyResult = false
            
                    end
                end)
            elseif cfg.useQuasarHousing then
                waitingForPropertyResult = true
                MySQL.Async.fetchAll('SELECT house FROM player_houses WHERE identifier = @owner', {
                    ['@owner'] = playerIdentifier
                }, function(propResult)
                    -- print(propResult[1] )
                    if propResult[1] ~= nil or  #propResult > 0 then
            
                        -- the player does have a property
                        MySQL.Async.fetchAll('SELECT label, coords FROM houselocations WHERE name = @name', {
                            ['@name'] = propResult[1].house
                        }, function(labelResult)
                            if #labelResult > 0 then
                                playerPropertyName = labelResult[1].label
                                playerPropertyEntering = labelResult[1].coords
                                waitingForPropertyResult = false
                                -- print(playerPropertyName)
                            end
                        end)
                    else
                        -- the player doesn't have a property
                        playerPropertyName = 'No property'
                        waitingForPropertyResult = false
            
                    end
                end)

            else

            end


            while (cfg.useMyProperties or cfg.useQuasarHousing) and waitingForPropertyResult do
                Citizen.Wait(50)
            end
    
            -- RESULT FOR THE CLIENT
            cb(result[1], IDCardNumber, playerPropertyName, playerPropertyEntering)

        end
    end)

end)

ESX.RegisterServerCallback('myDocuments:getPlayerDataComplete', function(source, cb, targetIdentifier, targetSource)

    local xPlayer = ESX.GetPlayerFromId(source)
    if targetSource ~= nil then
        xPlayer = ESX.GetPlayerFromId(targetSource)
    end
    local playerIdentifier = targetIdentifier or xPlayer.identifier

    local waitingForPropertyResult = false
    local waitingForJobResult = false
    -- local waitingForOtherResults = false
    local playerPropertyName = '-'
    local playerPropertyEntering 
    local IDCardNumber = getPlayerIDCardNumber(playerIdentifier)
    local playerJobLabel = 'Job'
    local playerJobRankLabel = 'Rank'


    MySQL.Async.fetchAll('SELECT * FROM users WHERE identifier = @identifier', {
        ['@identifier'] = playerIdentifier
    },
    function(result)
       
        if #result > 0 then

            waitingForJobResult = true
            -- MySQL.Async.fetchAll('SELECT label FROM jobs WHERE (name = @job_name)', {
            --     ['@job_name'] = result[1].job,
            -- },
            -- function(jobLabelResult)
            --     playerJobLabel = jobLabelResult[1].label

            --     MySQL.Async.fetchAll('SELECT label FROM job_grades WHERE (job_name = @job_name AND grade = @grade)', {
            --         ['@job_name'] = result[1].job,
            --         ['@grade'] = result[1].job_grade,
            --     },
            --     function(jobGradeResult)
            --         playerJobRankLabel = jobGradeResult[1].label
            --         waitingForJobResult = false
            --     end)
            -- end)
            playerJobLabel = xPlayer.job.label
            playerJobRankLabel = xPlayer.job.grade_label
            waitingForJobResult = false

            if cfg.useMyProperties then
                --
                -- IF USING MYPROPERTIES
                --
                waitingForPropertyResult = true
                MySQL.Async.fetchAll('SELECT property FROM prop_owner WHERE owner = @owner', {
                    ['@owner'] = playerIdentifier
                }, function(propResult)
                    -- print(propResult[1] )
                    if propResult[1] ~= nil or  #propResult > 0 then
            
                        -- the player does have a property
                        MySQL.Async.fetchAll('SELECT label, entering FROM prop WHERE name = @name', {
                            ['@name'] = propResult[1].property
                        }, function(labelResult)
                            if #labelResult > 0 then
                                playerPropertyName = labelResult[1].label
                                playerPropertyEntering = labelResult[1].entering
                                waitingForPropertyResult = false
                                -- print(playerPropertyName)
                            end
                        end)
                    else
                        -- the player doesn't have a property
                        playerPropertyName = Translation[cfg.Locale]['no_property']
                        waitingForPropertyResult = false
            
                    end
                end)
            elseif cfg.useQuasarHousing then
                waitingForPropertyResult = true
                MySQL.Async.fetchAll('SELECT house FROM player_houses WHERE identifier = @owner', {
                    ['@owner'] = playerIdentifier
                }, function(propResult)
                    -- print(propResult[1] )
                    if propResult[1] ~= nil or  #propResult > 0 then
            
                        -- the player does have a property
                        MySQL.Async.fetchAll('SELECT label, coords FROM houselocations WHERE name = @name', {
                            ['@name'] = propResult[1].house
                        }, function(labelResult)
                            if #labelResult > 0 then
                                playerPropertyName = labelResult[1].label
                                playerPropertyEntering = labelResult[1].coords
                                waitingForPropertyResult = false
                                -- print(playerPropertyName)
                            end
                        end)
                    else
                        -- the player doesn't have a property
                        playerPropertyName = 'No property'
                        waitingForPropertyResult = false
            
                    end
                end)

            else

            end


            while ((cfg.useMyProperties or cfg.useQuasarHousing) and waitingForPropertyResult) or waitingForJobResult do
                Citizen.Wait(50)
            end

            -- for special phones with userInfo columns
            local phoneNumber = '000'
            if cfg.useSpecialPhoneColumn then
                if result[1][cfg.specialPhoneColumn] ~= nil then
                    local decodedPhoneNumber = json.decode(result[1][cfg.specialPhoneColumn])
                    phoneNumber = decodedPhoneNumber[cfg.phoneEntry]
                end
            end
    
            -- RESULT FOR THE CLIENT
            cb(result[1], IDCardNumber, playerPropertyName, playerJobLabel, playerJobRankLabel, playerPropertyEntering, phoneNumber)

        end
    end)

end)

ESX.RegisterServerCallback('myDocuments:getPlayerDataWithJobRank', function(source, cb, targetIdentifier, targetSource)
    local xPlayer = ESX.GetPlayerFromId(source)
    if targetSource ~= nil then
        xPlayer = ESX.GetPlayerFromId(targetSource)
    end
    local playerIdentifier = targetIdentifier or xPlayer.identifier

    local IDCardNumber = getPlayerIDCardNumber(playerIdentifier)
    MySQL.Async.fetchAll('SELECT * FROM users WHERE identifier = @identifier', {
        ['@identifier'] = playerIdentifier
    },
    function(result)
        -- MySQL.Async.fetchAll('SELECT label FROM job_grades WHERE (job_name = @job_name AND grade = @grade)', {
        --     ['@job_name'] = result[1].job,
        --     ['@grade'] = result[1].job_grade,
        -- },
        -- function(jobGradeResult)
        --     cb(result[1], IDCardNumber, jobGradeResult[1].label)
        -- end)

        cb(result[1], IDCardNumber, xPlayer.job.grade_label)
        
    end)

end)

ESX.RegisterServerCallback('myDocuments:getPlayerDataWithLicenses', function(source, cb, targetIdentifier, targetSource)
    local xPlayer = ESX.GetPlayerFromId(source)
    if targetSource ~= nil then
        xPlayer = ESX.GetPlayerFromId(targetSource)
    end
    local playerIdentifier = targetIdentifier or xPlayer.identifier

    local IDCardNumber = getPlayerIDCardNumber(playerIdentifier)
    MySQL.Async.fetchAll('SELECT * FROM users WHERE identifier = @identifier', {
        ['@identifier'] = playerIdentifier
    },
    function(result)
        MySQL.Async.fetchAll('SELECT * FROM user_licenses WHERE owner = @owner', {
            ['@owner'] = playerIdentifier
        },
        function(userLicenses)
            cb(result[1], IDCardNumber, userLicenses)
        end)
        
    end)

end)

ESX.RegisterServerCallback('myDocuments:getPlayerData', function(source, cb, targetIdentifier, targetSource)
    local xPlayer = ESX.GetPlayerFromId(source)
    if targetSource ~= nil then
        xPlayer = ESX.GetPlayerFromId(targetSource)
    end
    local playerIdentifier = targetIdentifier or xPlayer.identifier

    local IDCardNumber = getPlayerIDCardNumber(playerIdentifier)
    MySQL.Async.fetchAll('SELECT * FROM users WHERE identifier = @identifier', {
        ['@identifier'] = playerIdentifier
    },
    function(result)
        cb(result[1], IDCardNumber)
    end)

end)

function getPlayerIDCardNumber(identifier)

    local identifierString = tostring(identifier)
    local shortIdentifier = string.sub(identifierString, 0, 6)
    return shortIdentifier

end

RegisterServerEvent("myDocuments:addLicenses")
AddEventHandler("myDocuments:addLicenses", function(licenses, targetIdentifier)
    local src = source
    MySQL.Async.fetchAll('SELECT type FROM user_licenses WHERE owner = @identifier', {
        ['@identifier'] = targetIdentifier
    },
    function(result)
        for k, v in pairs(result) do
            local found = false
            for k2, li in pairs(licenses) do
                if (v.type == li) then
                    found = true
                    break
                end
            end
            if (not found) then 
                -- print("DELETE FROM user_licenses WHERE type='" ..  v.type .. "' AND owner='" .. targetIdentifier .. "'")
                MySQL.Async.execute("DELETE FROM user_licenses WHERE type='" ..  v.type .. "' AND owner='" .. targetIdentifier .. "'")
            end
        end

        for k, li in pairs(licenses) do
            local found = false
            for k2, v in pairs(result) do
                if (v.type == li) then
                    found = true
                    break
                end
            end
            if (not found) then 
                -- print("INSERT INTO user_licenses (rype, owner) VALUES ('" .. json.encode(li) .. "', '" .. targetIdentifier .. "')")
                MySQL.Async.execute("INSERT INTO user_licenses (type, owner) VALUES ('" .. li .. "', '" .. targetIdentifier .. "')")
            end
        end
    end)

    local xPlayer = ESX.GetPlayerFromIdentifier(targetIdentifier)
    if (xPlayer) then
        xPlayer.triggerEvent("myDocuments:showNotification", Translation[cfg.Locale]["giveLicenseTarget"])
    end
    TriggerClientEvent("myDocuments:showNotification", src, Translation[cfg.Locale]["giveLicenseSender"])
end)