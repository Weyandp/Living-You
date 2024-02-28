-- ESX = nil
-- Citizen.CreateThread(function()
-- 	while ESX == nil do
-- 		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
-- 		Citizen.Wait(0)
-- 	end

-- end)

ESX = exports["es_extended"]:getSharedObject()

local _menuPool
if cfg.useNativeUI then
    _menuPool = NativeUI.CreatePool()
end
local documentsMenu
local isDocOpen = false
local wasMenuOpen = false
local lastSubmenu
local savedDocs

local currentDocumentData 

Citizen.CreateThread(function()
    -- TriggerScreenblurFadeIn(500)
    Wait(500)
    SendNUIMessage({type = "setCardLocation", position = cfg.cardsPosition})
    -- TriggerScreenblurFadeOut(500)

    if cfg.useNativeUI then
        while true do
            if _menuPool:IsAnyMenuOpen() then
                _menuPool:ProcessMenus()
            end

            -- if cfg.useKey then
            --     if IsControlJustReleased(0, cfg.Key) then
            --         openDocuments()
            --     end
            -- end

            Citizen.Wait(1)
        end
    end



end)

Citizen.CreateThread(function()
    while true do
        
        if cfg.useKey then
            if IsControlJustReleased(0, cfg.Key) then
                openDocuments()
            end
        end

        Citizen.Wait(1)
    end
end)

exports("GetGiveableLicenses", function()
    return cfg.giveableLicenses
end)

Citizen.CreateThread(function()
    while true do
        -- if cfg.useKey then
        --     if IsControlJustReleased(0, cfg.Key) then
        --         openDocuments()
        --     end
        -- end
        if isDocOpen then
            if currentDocumentData ~= nil then

                AddTextEntry('text', 
                '~' .. cfg.ScreenshotKeyName .. '~' .. Translation[cfg.Locale]['infobar_1'] .. '~n~~'
                ..  cfg.AbortKeyName .. '~' .. Translation[cfg.Locale]['infobar_2']
                )
                BeginTextCommandDisplayHelp('text')
                EndTextCommandDisplayHelp(false, false, false, -1)

                if IsControlJustReleased(0, cfg.ScreenshotKey) then
                    -- flash animation
                    DoScreenFadeOut(100)
                    Citizen.Wait(100)
                    DoScreenFadeIn(100)
                    SendNUIMessage({type = "flash"})
                    if currentDocumentData ~= nil then
                        TriggerServerEvent('myDocuments:saveDocument', currentDocumentData.doctype, currentDocumentData)
                        Wait(500)
                        ESX.TriggerServerCallback('myDocuments:getSavedDocuments', function(data_)
                            for k, v in pairs(data_) do
                                for k2, v2 in pairs(cfg.documentlist) do
                                    if v.type == v2.type then
                                        data_[k].label = v2.label
                                        -- print('found label: ' .. data[k2].label)
                                        break
                                    end
                                end
                            end
                            if (data_ ~= nil and #data_ > 0) then
                                SendNUIMessage({type = "refreshSavedDocs", data = data_})
                            end
                        end)
                    end
                end
            else

                AddTextEntry('text', '~' .. cfg.AbortKeyName .. '~' .. Translation[cfg.Locale]['infobar_2'])
                BeginTextCommandDisplayHelp('text')
                EndTextCommandDisplayHelp(false, false, false, -1)

            end
            

            if IsControlJustReleased(0, cfg.AbortKey) then
                SendNUIMessage({type = "closeAll"})
                isDocOpen = false
                if (not cfg.useNativeUI) then
                    if (wasMenuOpen) then
                        SendNUIMessage({type = "showMenu"})
                        SetNuiFocus(true, true)
                    end
                    wasMenuOpen = false
                else 
                    if lastSubmenu ~= nil then
                        lastSubmenu.SubMenu:Visible(true)
                    end
                end
            end
        end
        Citizen.Wait(1)
    end
end)

function openDocuments()
    if (not cfg.useNativeUI) then
        SendNUIMessage({type = "showMenu"})
        savedDocs = {}
        local ownedDocs = {}
        local giveableLicenses = {}
        ESX.TriggerServerCallback('myDocuments:getSavedDocuments', function(data)
            if (data ~= nil and #data > 0) then
                for k, v in pairs(data) do
                    for k2, v2 in pairs(cfg.documentlist) do
                        if v.type == v2.type then
                            data[k].label = v2.label
                            -- print('found label: ' .. data[k2].label)
                            break
                        end
                    end
                end

                savedDocs = data
            end

            ESX.TriggerServerCallback('myDocuments:getPlayerLicenses', function(mylicenses, myjob)
                print(mylicenses)
                for k, v in pairs(cfg.documentlist) do
                    
                    local gotThisDocument = false
                    if v.requiredJob == nil and v.requiredLicense == nil then
                        gotThisDocument = true
                    elseif v.requiredJob ~= nil then
                        if #v.requiredJob > 0 then
                            for k2, v2 in pairs(v.requiredJob) do
                                if v2 == myjob then
                                    gotThisDocument = true
                                    break
                                elseif k2 == #v.requiredJob then
                                    gotThisDocument = false
                                end 
                            end
                        else
                            gotThisDocument = true
                        end
                    end

                    if v.requiredLicense ~= nil then
                        if #mylicenses > 0 then
                            for k2, v2 in pairs(mylicenses) do
                                if v.requiredLicense == v2.type then
                                    gotThisDocument = true
                                    break
                                elseif k2 == #mylicenses then
                                    gotThisDocument = false
                                end
                            end
                        else
                            gotThisDocument = false
                        end
                        
                    end
        
                    if gotThisDocument then
                        table.insert(ownedDocs, {type = v.type, label = v.label})
                    end
        
                end

                local giveableLicenses = {}
                local targetLicenses = {}
                for k, v in pairs(cfg.giveableLicenses) do
                    
                    local gotThisDocument = false
                    if (v.requiredJob == nil) then
                        gotThisDocument = true
                    elseif v.requiredJob ~= nil then
                        if (#v.requiredJob > 0) then
                            for k2, v2 in pairs(v.requiredJob) do
                                if (v2 == myjob) then
                                    gotThisDocument = true
                                    break
                                end 
                            end
                        else
                            gotThisDocument = true
                        end
                    end

                    if gotThisDocument then
                        table.insert(giveableLicenses, {type = v.type, label = v.label})
                    end
                end
                   
                SendNUIMessage({type = "openMenu", ownedDocs = ownedDocs, savedDocs = savedDocs, giveableLicenses = giveableLicenses, targetLicenses = targetLicenses})
                SetNuiFocus(true, true)
            end)
        end)
    else
        if documentsMenu ~= nil and documentsMenu:Visible() then
            documentsMenu:Visible(false)
        end
    
        documentsMenu = NativeUI.CreateMenu('Meine Dokumente', nil)
        _menuPool:Add(documentsMenu)
    
        local savedDocsSub = _menuPool:AddSubMenu(documentsMenu, '~b~Gespeicherte Dokumente', nil)
        savedDocsSub.SubMenu.ParentItem:RightLabel('~b~→→→')
        ESX.TriggerServerCallback('myDocuments:getSavedDocuments', function(saveddocs)
            if saveddocs ~= nil and #saveddocs > 0 then
    
                for k, v in pairs(saveddocs) do
                    local typeLabel 
                    for j, docinfo in pairs(cfg.documentlist) do
                        if docinfo.type == v.type then
                            typeLabel = docinfo.label
                            break
                        end
                    end
        
                    local savedDoc_Sub = _menuPool:AddSubMenu(savedDocsSub.SubMenu, 'Bild von ~p~' .. typeLabel .. '.png', 'Aufgenommen am ~p~' .. v.timestamp)
                    local showItem = NativeUI.CreateItem('Anschauen', '~b~')
                    savedDoc_Sub.SubMenu:AddItem(showItem)
    
                    showItem.Activated = function(sender, index)
                        SendNUIMessage({type = "showCard", card = v.type, data = v.data})
                        lastSubmenu = savedDoc_Sub
                        savedDoc_Sub.SubMenu:Visible(false)
                
                        Citizen.Wait(120)
                        currentDocumentData = nil
                        isDocOpen = true
                    end
    
                    local deleteItem = NativeUI.CreateItem('Löschen', '~b~')
                    savedDoc_Sub.SubMenu:AddItem(deleteItem)
    
                    deleteItem.Activated = function(sender, index)
                        TriggerServerEvent('myDocuments:removeObject', v.id)
                        ShowNotification('Das Bild ~p~' .. typeLabel .. '.png ~s~wurde erfolgreich ~g~gelöscht~s~')
                        _menuPool:CloseAllMenus()
                    end
               
                end
    
                
            end
        end)
    
        ESX.TriggerServerCallback('myDocuments:getPlayerLicenses', function(mylicenses, myjob)
            for k, v in pairs(cfg.documentlist) do
                
                local gotThisDocument = false
                if v.requiredJob == nil and v.requiredLicense == nil then
                    gotThisDocument = true
                elseif v.requiredJob ~= nil then
                    if #v.requiredJob > 0 then
                        for k2, v2 in pairs(v.requiredJob) do
                            if v2 == myjob then
                                gotThisDocument = true
                                break
                            elseif k2 == #v.requiredJob then
                                gotThisDocument = false
                            end 
                        end
                    else
                        gotThisDocument = true
                    end
                
                end
                if v.requiredLicense ~= nil then
                    if #mylicenses > 0 then
                        for k2, v2 in pairs(mylicenses) do
                            if v.requiredLicense == v2.type then
                                gotThisDocument = true
                                break
                            elseif k2 == #mylicenses then
                                gotThisDocument = false
                            end
                        end
                    else
                        gotThisDocument = false
                    end
                    
                end
    
                if gotThisDocument then
                    local docSub = _menuPool:AddSubMenu(documentsMenu, v.label, nil)
            
                    local showOwn = NativeUI.CreateItem('Anschauen', 'Schaue dir dein Dokument selber an')
                    docSub.SubMenu:AddItem(showOwn)
                
                    showOwn.Activated = function(sender, index)
                        showDocumentFromType(v.type)
                        
                        lastSubmenu = docSub
                        docSub.SubMenu:Visible(false)
                
                        Citizen.Wait(120)
                        isDocOpen = true
                    end
                
                    local showOthers = NativeUI.CreateItem('Vorzeigen', 'Zeige jemand anderem dein Dokument')
                    docSub.SubMenu:AddItem(showOthers)
    
                    showOthers.Activated = function(sender, index)
                        
                        if getClosestPlayer(3.5) ~= nil then
                            _menuPool:CloseAllMenus()
                            startAnim()
                            TriggerServerEvent('myDocuments:showDocumentToSomebody', GetPlayerServerId(getClosestPlayer(3.5)), v.type)
                        else
                            ShowNotification('~r~Es ist niemand in deiner Nähe!')
                        end
                    end
    
                    _menuPool:RefreshIndex()
                    _menuPool:MouseEdgeEnabled(false)
                end
    
            end
        end)
    
        documentsMenu:Visible(true)
        _menuPool:MouseEdgeEnabled(false)
    
    end
end

if cfg.useChangeMailCommand then
    RegisterCommand(cfg.changeMailCommand, function(source, args, rawCommand)
        if args[1] ~= nil then
            TriggerServerEvent('myDocuments:updateMail', args[1])
            ShowNotification(Translation[cfg.Locale]['mail_changed'])
        end
    
    end, false)
end


RegisterCommand(cfg.Command, function(source, args, rawCommand)
    openDocuments()
end, false)

-- if cfg.useKey then
--     RegisterKeyMapping(cfg.Command, Translation[cfg.Locale]['keymapping_desc'], 'keyboard', cfg.Key)
-- end


RegisterNetEvent('myDocuments:open')
AddEventHandler('myDocuments:open', function()
    openDocuments()
end)


RegisterNetEvent('myDocuments:showForeignDocument')
AddEventHandler('myDocuments:showForeignDocument', function(type, targetSource)
    showDocumentFromType(type, nil, targetSource)
    isDocOpen = true
end)

RegisterNUICallback("showMe", function(data, cb)
    if (data.id ~= nil) then
        for k, v in pairs(savedDocs) do
            if (v.id == data.id) then 
                SendNUIMessage({type = "showCard", card = v.type, data = v.data})
                break;
            end
        end
    else 
        showDocumentFromType(data.type, nil)
    end
    SetNuiFocus(false, false)
    isDocOpen = true
    wasMenuOpen = true
end)

RegisterNUICallback("showOther", function(data, cb)
    if getClosestPlayer(3.5) ~= nil then
        startAnim()
        TriggerServerEvent('myDocuments:showDocumentToSomebody', GetPlayerServerId(getClosestPlayer(3.5)), data.type)
    else
        ShowNotification(Translation[cfg.Locale]['no_nearby'])
    end
end)

RegisterNUICallback("delete", function(data, cb)
    TriggerServerEvent('myDocuments:removeObject', data.id)
end)

RegisterNUICallback("closeMenu", function(data, cb)
    SetNuiFocus(false, false)
end)

RegisterNUICallback("openLicenseMenu", function(data, cb)
    if (getClosestPlayer(3.5) ~= nil) then
        ESX.TriggerServerCallback('myDocuments:getPlayerData', function(userData, IDNumber)
            TriggerScreenblurFadeIn(0)
            ESX.TriggerServerCallback("myDocuments:getPlayerLicenses", function(serverTargetLicenses) 
                SendNUIMessage({type = "setName", name = userData.firstname .. " " .. userData.lastname, identifier = userData.identifier, targetLicenses = serverTargetLicenses})
            end, GetPlayerServerId(getClosestPlayer(3.5)))
        end, nil, GetPlayerServerId(getClosestPlayer(3.5)))
    else 
        ShowNotification(Translation[cfg.Locale]['no_nearby'])
    end
end)

RegisterNUICallback("addLicenses", function(data, cb)
    TriggerServerEvent("myDocuments:addLicenses", data.licenses, data.identifier)
end)

RegisterNUICallback("removeBlur", function(data, cb)
    TriggerScreenblurFadeOut(0)
end)

RegisterNetEvent("myDocuments:showNotification", function(msg)
    ShowNotification(msg)
end)

function showDocumentFromType(type, identifier, targetSource)
    if type == 'idcard' then
        showIDCard(identifier, targetSource)
    elseif type == 'drive' then
        showDrivingLicense(identifier, targetSource)
    elseif type == 'hunting' then
        showHuntingLicense(identifier, targetSource)
    elseif type == 'fly' then
        showFlightLicense(identifier, targetSource)
    elseif type == 'boat' then
        showBoatLicense(identifier, targetSource)
    elseif type == 'weapon' then
        showWeaponLicense(identifier, targetSource)
    elseif type == 'lawyer' then
        showLawyerLicense(identifier, targetSource)
    elseif type == 'pd' then
        showPDLicense(identifier, targetSource)
    elseif type == 'md' then
        showMDLicense(identifier, targetSource)
    elseif type == 'businessCard' then
        showBusinessCard(identifier, targetSource)
    end
end

function showBusinessCard(identifier, targetSource)
    ESX.TriggerServerCallback('myDocuments:getPlayerDataComplete', function(userData, IDNumber, propName, jobname, jobrank, propertyEntering, phoneNumberRes)
        local s1
        local street1 = ''
        if propertyEntering ~= nil then
            s1 = Citizen.InvokeNative( 0x2EB41072B4C1E4C0, propertyEntering.x, propertyEntering.y, propertyEntering.z, Citizen.PointerValueInt(), Citizen.PointerValueInt() )
            street1 = GetStreetNameFromHashKey(s1)
        end

        local defaultMail = userData.firstname .. '.' .. userData.lastname .. cfg.defaultMailSuffix

        local phoneNumber = userData[cfg.phoneNumberColumn]
        if cfg.useSpecialPhoneColumn then
            phoneNumber = phoneNumberRes
        end

        SendNUIMessage({type = "showCard", card = "businessCard", data = {
            ["name"] = string.upper(userData.firstname .. ' ' .. userData.lastname),
            ["job"] = jobname .. ' - ' .. jobrank, -- "Firma - Rank"
            ["number"] = phoneNumber,
            ["mail"] = userData.mainMailadress or defaultMail,
            ["address"] = propName .. ' <br> ' .. street1,
            ["sex"] = string.upper(userData.sex)
        }})

        currentDocumentData = {
            doctype = "businessCard",
            name = string.upper(userData.firstname .. ' ' .. userData.lastname),
            job = jobname .. ' - ' .. jobrank,
            number = phoneNumber,
            mail = userData.mainMailadress or '-',
            address = propName .. ' <br> ' .. street1,
            sex = string.upper(userData.sex),
        }
    end, identifier, targetSource)
end

function showMDLicense(identifier, targetSource)
    ESX.TriggerServerCallback('myDocuments:getPlayerDataWithJobRank', function(userData, IDNumber, jobrank)
        SendNUIMessage({type = "showCard", card = "md", data = {
            ["name"] = userData.firstname .. ' ' .. userData.lastname,
            ["rank"] = jobrank,
            ["sign"] = userData.firstname .. ' ' .. userData.lastname,
            ["sex"] = string.upper(userData.sex)
        }})

        currentDocumentData = {
            doctype = "md",
            name = userData.firstname .. ' ' .. userData.lastname,
            rank = jobrank,
            sign = userData.firstname .. ' ' .. userData.lastname,
            sex = string.upper(userData.sex),
        }
    end, identifier, targetSource)
end

function showPDLicense(identifier, targetSource)
    ESX.TriggerServerCallback('myDocuments:getPlayerDataWithJobRank', function(userData, IDNumber, jobrank)
        SendNUIMessage({type = "showCard", card = "pd", data = {
            ["name"] = userData.firstname .. ' ' .. userData.lastname,
            ["rank"] = jobrank,
            ["sign"] = userData.firstname .. ' ' .. userData.lastname,
            ["sex"] = string.upper(userData.sex)
        }})

        currentDocumentData = {
            doctype = "pd",
            name = userData.firstname .. ' ' .. userData.lastname,
            rank = jobrank,
            sign = userData.firstname .. ' ' .. userData.lastname,
            sex = string.upper(userData.sex),
        }
    end, identifier, targetSource)
end

function showLawyerLicense(identifier, targetSource)
    ESX.TriggerServerCallback('myDocuments:getPlayerDataWithProperties', function(userData, IDNumber, propName)
        SendNUIMessage({type = "showCard", card = "lawyer", data = {
            ["name"] = userData.firstname .. ' ' .. userData.lastname,
            ["address"] = propName,
            ["sign"] = userData.firstname .. ' ' .. userData.lastname,
            ["sex"] = string.upper(userData.sex)
        }})

        currentDocumentData = {
            doctype = "lawyer",
            name = userData.firstname .. ' ' .. userData.lastname,
            address = propName,
            sign = userData.firstname .. ' ' .. userData.lastname,
            sex = string.upper(userData.sex)
        }
    end, identifier, targetSource)
end

function showWeaponLicense(identifier, targetSource)
    ESX.TriggerServerCallback('myDocuments:getPlayerDataWithProperties', function(userData, IDNumber, propName)
        SendNUIMessage({type = "showCard", card = "weapon", data = {
            ["name"] = userData.lastname,
            ["firstname"] = userData.firstname,
            ["dob"] = userData.dateofbirth,
            ["address"] = propName,
            ["sex"] = string.upper(userData.sex)
        }})

        currentDocumentData = {
            doctype = "weapon",
            name = userData.lastname,
            firstname = userData.firstname,
            dob = userData.dateofbirth,
            address = propName,
            sex = string.upper(userData.sex),
        }
    end, identifier, targetSource)
end


function showBoatLicense(identifier, targetSource)
    ESX.TriggerServerCallback('myDocuments:getPlayerData', function(userData, IDNumber)
        SendNUIMessage({type = "showCard", card = "boat", data = {
            ["name"] = userData.lastname,
            ["firstname"] = userData.firstname,
            ["dob"] = userData.dateofbirth,
            ["id"] = IDNumber,
            ["sign"] = userData.firstname .. ' ' .. userData.lastname,
            ["sex"] = string.upper(userData.sex)
        }})

        currentDocumentData = {
            doctype = "boat",
            name = userData.lastname,
            firstname = userData.firstname,
            dob = userData.dateofbirth,
            id = IDNumber,
            sign = userData.firstname .. ' ' .. userData.lastname,
            sex = string.upper(userData.sex),
        }
    end, identifier, targetSource)
end

function showFlightLicense(identifier, targetSource)
    ESX.TriggerServerCallback('myDocuments:getPlayerData', function(userData, IDNumber)
        SendNUIMessage({type = "showCard", card = "fly", data = {
            ["name"] = userData.firstname .. ' ' .. userData.lastname,
            ["id"] = "License Nr. " .. IDNumber, -- !Wichtig! Lizenz Nr. müsste davor stehen, wenn das geht, sonst muss man sich danoch was überlegen
            ["sign"] = userData.firstname .. ' ' .. userData.lastname
        }})

        currentDocumentData = {
            doctype = "fly",
            name = userData.firstname .. ' ' .. userData.lastname,
            id = "License Nr. " .. IDNumber,
            sign = userData.firstname .. ' ' .. userData.lastname,
        }
    end, identifier, targetSource)
end

function showHuntingLicense(identifier, targetSource)
    ESX.TriggerServerCallback('myDocuments:getPlayerDataWithProperties', function(userData, IDNumber, propName)
        SendNUIMessage({type = "showCard", card = "hunting", data = {
            ["name"] = userData.firstname .. ' ' .. userData.lastname,
            ["address"] = propName,
            ["dob"] = userData.dateofbirth,
            ["sign"] = userData.firstname .. ' ' .. userData.lastname
        }})

        currentDocumentData = {
            doctype = "hunting",
            name = userData.firstname .. ' ' .. userData.lastname,
            address = propName,
            dob = userData.dateofbirth,
            sign = userData.firstname .. ' ' .. userData.lastname,
        }
    end, identifier, targetSource)
end

function showDrivingLicense(identifier, targetSource)
    ESX.TriggerServerCallback('myDocuments:getPlayerDataWithLicenses', function(userData, IDNumber, licenses)

        local licenseList = ''
        if licenses ~= nil and #licenses > 0 then
            for k, v in pairs(licenses) do
                for k2, v2 in pairs(cfg.drivingLicenseContent) do
                    if v.type == v2.databasename then
                        licenseList = licenseList .. v2.label .. ' <br> '
                    end
                end
            end
        else
            licenseList = 'No license!'
        end

        SendNUIMessage({type = "showCard", card = "drive", data = {
            ["name"] = userData.lastname, -- Nachname
            ["firstname"] = userData.firstname, -- Vorname
            ["sex"] = string.upper(userData.sex),
            ["dob"] = userData.dateofbirth,
            ["id"] = IDNumber, -- ID-Nummer (Hatte mir gedacht man nimmt die Datenbank Id aus der User tabelle mit einer Nummer davor die man in der Config einstellen kann)
            ["classes"] = licenseList, -- Die Klassen die man hat. !Wichtig! nach jeder Klasse einmal <br> setzen
            ["sign"] = userData.firstname .. ' ' .. userData.lastname
        }})

        currentDocumentData = {
            doctype = "drive",
            name = userData.lastname,
            firstname = userData.firstname,
            sex = string.upper(userData.sex),
            dob = userData.dateofbirth,
            id = IDNumber,
            classes = licenseList,
            sign = userData.firstname .. ' ' .. userData.lastname,
        }
    end, identifier, targetSource)
end

function showIDCard(identifier, targetSource)
    ESX.TriggerServerCallback('myDocuments:getPlayerDataWithProperties', function(userData, IDNumber, propName)

        if userData.registerDate == nil then
            userData.registerDate = '1970-01-01'
        end
        SendNUIMessage({type = "showCard", card = "idcard", data = {
            ["name"] = userData.lastname, -- Nachname
            ["firstname"] = userData.firstname, -- Vorname
            ["address"] = propName, -- Adresse
            ["sex"] = string.upper(userData.sex), -- Geschlecht (M/W)
            ["dob"] = userData.dateofbirth, -- Geburtstag
            ["id"] = IDNumber, -- ID-Nummer (Hatte mir gedacht man nimmt die Datenbank Id aus der User tabelle mit einer Nummer davor die man in der Config einstellen kann)
            ["doi"] = userData.registerDate, -- Tag der Ausstellung (Wann der Char erstellt wurde, müsste man also dazu programmieren)
            ["sign"] = userData.firstname .. ' ' .. userData.lastname -- Vor- und Nachname
        }})

        currentDocumentData = {
            doctype = "idcard",
            name = userData.lastname,
            firstname = userData.firstname,
            address = propName,
            sex = string.upper(userData.sex),
            dob = userData.dateofbirth,
            id = IDNumber,
            doi = userData.registerDate,
            sign = userData.firstname .. ' ' .. userData.lastname,
        }
    end, identifier, targetSource)
end

function startAnim()
 	
	Citizen.CreateThread(function()
		
	  RequestAnimDict("mp_common")
	  
	  while not HasAnimDictLoaded("mp_common") do
	    Citizen.Wait(0)
	  end
		TaskPlayAnim(PlayerPedId(), "mp_common", "givetake1_a" ,8.0, -8.0, -1, 0, 0, false, false, false )
		Wait(1600)
	end)
end

function ShowNotification(text)
	SetNotificationTextEntry('STRING')
    AddTextComponentString(text)
	DrawNotification(false, true)
end