local ped = nil

-- Credits: https://github.com/glitchdetector/fivem-minimap-anchor
function GetMinimapAnchor()
    local safezone = GetSafeZoneSize()
    local safezone_x = 1.0 / 20.0
    local aspect_ratio = GetAspectRatio(0)
    local res_x, ___ = GetActiveScreenResolution()
    local xscale = 1.0 / res_x
    local Minimap = {}
    Minimap.width = xscale * (res_x / (4 * aspect_ratio))
    Minimap.left_x = xscale * (res_x * (safezone_x * ((math.abs(safezone - 1.0)) * 10)))
    Minimap.right_x = Minimap.left_x + Minimap.width
    return Minimap
end

--=============== Status Functions ===============--
local UpdateHudStatus = function()
    TriggerEvent('esx_status:getStatus', 'hunger', function(hunger)
        TriggerEvent('esx_status:getStatus', 'thirst', function(thirst)
            SendNUIMessage({
                a = 'SetStatus',
                hunger = ESX.Math.Round((hunger.val / 1000000) * 5),
                thirst = ESX.Math.Round((thirst.val / 1000000) * 5)
            })
        end)
    end)
end

local UpdateHudStatus2 = function(data)
    local hunger = {}
    local thirst = {}
    for _, status in pairs(data) do
        if status.name == 'thirst' then
            thirst = status
        elseif status.name == 'hunger' then
            hunger = status
        end
    end
    SendNUIMessage({
        a = 'SetStatus',
        hunger = ESX.Math.Round((hunger.val / 1000000) * 5),
        thirst = ESX.Math.Round((thirst.val / 1000000) * 5)
    })
end

--=============== Status Events ===============--
RegisterNetEvent('esx_status:add', UpdateHudStatus)
RegisterNetEvent('esx_status:remove', UpdateHudStatus)
RegisterNetEvent('esx_status:set', UpdateHudStatus)
RegisterNetEvent('esx_status:onTick', UpdateHudStatus2)
RegisterNetEvent('esx_status:load', UpdateHudStatus2)

--=============== Player Update ===============--
-- RegisterNetEvent('ct_hud:UpdatePlayers', function(players)
--     SendNUIMessage({
--         a = 'SetPlayers',
--         players = players
--     })
-- end)

--=============== ESX Events ===============--
RegisterNetEvent('esx:setAccountMoney', function(account)
    if account.name ~= 'bank' then
        SendNUIMessage({
            a = 'SetMoney',
            name = account.name,
            money = account.money
        })
    end
end)

RegisterNetEvent('esx:setJob', function(job)
    SendNUIMessage({
        a = 'SetJob',
        job = job.label:upper(),
        grade = job.grade_label:upper()
    })
end)

--=============== SaltyChat Events ===============--
AddEventHandler('SaltyChat_VoiceRangeChanged', function(__, index)
    SendNUIMessage({
        a = 'SetRange',
        active = index + 1
    })
end)

AddEventHandler('SaltyChat_TalkStateChanged', function(bool)
    SendNUIMessage({
        a = 'SetTalking',
        talking = bool
    })
end)

AddEventHandler('SaltyChat_MicStateChanged', function(bool)
    SendNUIMessage({
        a = 'SetMuted',
        muted = bool
    })
end)

AddEventHandler('SaltyChat_MicEnabledChanged', function(bool)
    SendNUIMessage({
        a = 'SetMuted',
        muted = bool
    })
end)

--=============== Progressbar ===============--
RegisterNetEvent('cs_hud:Progressbar', function(text, time)
    if time == 0 then
        SendNUIMessage({a = 'StopProgress'})
    else
        SendNUIMessage({
            a = 'StartProgress',
            time = time,
            text = text
        })
    end
end)

RegisterNetEvent('cs_hud:StopProgressbar', function(text, time)
    SendNUIMessage({a = 'StopProgress'})
end)

--=============== Help Notify ===============--
local timer = GetGameTimer()
local isOpen = false
RegisterNetEvent('cs_hud:HelpUI', function(control, text)
    if not control then
        control = 'E'
    end
    timer = GetGameTimer()
    if not isOpen then
        isOpen = true
        SendNUIMessage({
            a = 'ShowHelp',
            control = control,
            text = text
        })
        CreateThread(function()
            while timer + 100 >= GetGameTimer() do Wait(100) end
            isOpen = false
            Wait(0)
            if not isOpen then
                SendNUIMessage({a = 'HideHelp'})
            end
        end)
    end
end)

--=============== Notification ===============--
RegisterNetEvent('cs_hud:Notify', function(title, text, type, icon, sound, time, sub)
    SendNUIMessage({
        a = 'AddNotification',
        data = {
            title = title,
            text = text,
            type = type or 'info',
            icon = icon and './img/' .. icon .. '.png' or './img/notify.png',
            sound = sound and './audio/' .. sound .. '.mp3' or './audio/notify.mp3',
            time = time or 5000,
            sub = sub or ''
        }
    })
end)

RegisterNetEvent('cs_hud:TCNotify', function(text, name)
    SendNUIMessage({
        a = 'AddTeamchat',
        data = {
            title = 'TEAMCHAT',
            text = text,
            sub = name,
            type = 'info',
            icon = './img/teamchat.png',
            sound = './audio/teamchat.mp3',
            time = 7000
        }
    })
end)

RegisterNetEvent('cs_hud:Announce', function(text)
    SendNUIMessage({
        a = 'AddAnnouncement',
        data = {
            title = 'ANKÜNDIGUNG',
            text = text,
            icon = './img/announce.png',
            sound = './audio/announce.mp3',
            type = 'info',
            time = 10000
        }
    })
end)

RegisterNetEvent('cs_hud:Custom-Announce', function(title, text, type, icon, sound, time)
    SendNUIMessage({
        a = 'AddAnnouncement',
        data = {
            title = title,
            text = text,
            icon = icon and './img/' .. icon .. '.png' or './img/notify.png',
            sound = sound and './audio/' .. sound .. '.mp3' or './audio/notify.mp3',
            time = time or 10000,
            type = type or 'info'
        }
    })
end)

RegisterNetEvent('cs_hud:OOC', function(pos, msg, name)
    local coords = GetEntityCoords(PlayerPedId())
    if #(coords - pos) < 3.0 then
        TriggerEvent('cs_hud:Notify', 'OOC', msg, 'info', 'notify', 'notify', 5000, name)
    end
end)

--=============== On Start ===============--
CreateThread(function()
    SetTextChatEnabled(false)
    repeat
        Wait()
    until ESX.IsPlayerLoaded()
    Wait(1000)
    SendNUIMessage({
        a = '6789tighasdb5adsi79',
        _0xFFF000HASDJGH = 'yntuad6rtibn7g7a6b9rsdn'
    })
    Wait(1000)
    local data = ESX.GetPlayerData()
    for _, account in pairs(data.accounts) do
        if account.name ~= 'bank' then
            SendNUIMessage({
                a = 'SetMoney',
                name = account.name,
                money = account.money
            })
        end
    end
    
    SendNUIMessage({
        a = 'SetJob',
        job = data.job.label,
        grade = data.job.grade_label
    })
    
    SendNUIMessage({
        a = 'SetId',
        id = GetPlayerServerId(PlayerId())
    })
    
    UpdateHudStatus()
    
    local postals = json.decode(LoadResourceFile(GetCurrentResourceName(), 'postal.json'))
    while true do
        local ui = GetMinimapAnchor()
        local coords = GetEntityCoords(PlayerPedId())
        local vec_2 = vec(coords.x, coords.y)
        local hash, __ = GetStreetNameAtCoord(coords.x, coords.y, coords.z)
        local street = GetStreetNameFromHashKey(hash)
        local nearest = 100000
        local code = 0
        
        for _, postal in pairs(postals) do
            local dist = #(vec_2 - vec(postal.x, postal.y))
            if dist < nearest then
                nearest = dist
                code = postal.code
            end
        end
        
        SendNUIMessage({
            a = 'SetMapData',
            street = street:upper(),
            position = math.ceil(ui.right_x * 100),
            postal = code,
            statuspos = math.ceil((ui.right_x / 4) * 100)
        })
        Wait(1000)
    end
end)

--=============== Pausemenu ===============--
local hudCMD = false

CreateThread(function()
    local IsPauseMenuActive = IsPauseMenuActive

    repeat
        Wait()
    until ESX.IsPlayerLoaded()
    Wait(1000)
    
    while true do
        if not hudCMD then
            SendNUIMessage({
                a = 'ToggleHud',
                bool = not IsPauseMenuActive()
            })
        end
        SendNUIMessage({
            a = 'SetRadio',
            radio = exports.saltychat:GetRadioChannel(true) ~= nil
        })
        SendNUIMessage({
            a = 'SetTalking',
            talking = NetworkIsPlayerTalking(PlayerId()) == 1
        })
        Wait(150)
    end
end)

RegisterCommand('hud', function()
    hudCMD = not hudCMD
    SendNUIMessage({
        a = 'ToggleHud',
        bool = not hudCMD
    })
end, false)

RegisterNetEvent('cs_hud:hideHUD', function()
    SendNUIMessage({
        a = 'ToggleHud',
        bool = false
    })
end)

RegisterNetEvent('cs_hud:showHUD', function()
    SendNUIMessage({
        a = 'ToggleHud',
        bool = true
    })
end)

--=============== Weapon ===============--
CreateThread(function()
    local IsPedArmed = IsPedArmed
    local GetSelectedPedWeapon = GetSelectedPedWeapon
    local GetAmmoInClip = GetAmmoInClip
    local GetAmmoInPedWeapon = GetAmmoInPedWeapon
    while true do
        local sleep = 1000
        local weapon = GetSelectedPedWeapon(ped)
        if weapon == GetHashKey('WEAPON_UNARMED') then
            SendNUIMessage({
                a = 'ToggleWeapon',
                weapon = false
            })
        else
            sleep = 120
            local _, clip = GetAmmoInClip(ped, weapon)
            SendNUIMessage({
                a = 'ToggleWeapon',
                weapon = Weapons[weapon],
                ammo = clip,
                max_ammo = GetAmmoInPedWeapon(ped, weapon) - clip
            })
        end
        Wait(sleep)
    end
end)

--=============== Speedo ===============--
CreateThread(function()
    local PlayerPedId = PlayerPedId
    local GetEntitySpeed = GetEntitySpeed
    local GetVehiclePedIsIn = GetVehiclePedIsIn
    local IsPedInAnyVehicle = IsPedInAnyVehicle
    while true do
        local sleep = 1000
        ped = PlayerPedId()
        
        if IsPedInAnyVehicle(ped, false) then
            sleep = 80
            local veh = GetVehiclePedIsIn(ped, false)
            local _, lights, beam = GetVehicleLightsState(veh)
            SendNUIMessage({
                a = 'ToggleSpeedo',
                bool = true,
                speed = math.ceil(GetEntitySpeed(veh) * 3.6),
                engine = GetIsVehicleEngineRunning(veh),
                door = GetVehicleDoorLockStatus(veh) == 1,
                light = lights == 1 or beam == 1,
                rpm = math.floor(GetVehicleCurrentRpm(veh) * 24),
                gear = GetVehicleCurrentGear(veh),
                fuel = math.floor(GetVehicleFuelLevel(veh))
            })
        else
            SendNUIMessage({
                a = 'ToggleSpeedo',
                bool = false
            })
        end
        
        Wait(sleep)
    end
end)

--=============== CHAT ===============--
RegisterCommand('+chat', function()
    if not IsNuiFocused() then
        SetNuiFocus(true, true)
        SendNUIMessage({a = 'OpenChat'})
    end
end, false)
RegisterNUICallback('close', function(data, cb)
    SetNuiFocus(false, false)
end)
RegisterNUICallback('input', function(data, cb)
    ExecuteCommand(data.text:sub(2))
end)
RegisterKeyMapping('+chat', 'Chat', 'keyboard', 'T')

RegisterCommand('test', function()
    for i=1, 20 do
        TriggerEvent('cs_hud:Notify', 'TITEL', 'TEXT', 'info', 'notify', 'notify', 5000)
        Wait(100)
    end
end, false)

------------------------------------------------ SALTYCHAT ------------------------------------------------
local stage = 1
local micmuted = false
local voicelevel = 0

RegisterNetEvent('SaltyChat_VoiceRangeChanged')
AddEventHandler('SaltyChat_VoiceRangeChanged', function(voiceRange, index, availableVoiceRanges)
    SendNUIMessage({type = "updateRange", range = index})
    local show = false
    show = true
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(1)
            if show then
                local pedCoords = GetEntityCoords(PlayerPedId())
                DrawMarker(1, pedCoords.x, pedCoords.y, pedCoords.z - 1, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, voiceRange * 2.0, voiceRange * 2.0, 1.0, 255, 120, 0, 150, false, false, 2, false, nil, nil, false)
            else
                return
            end
        end
    end)
    Citizen.Wait(200)
    show = false
end)

AddEventHandler('SaltyChat_VoiceRangeChanged', function(voiceRange)
    if micmuted == false then
        if voiceRange == 3.5 then
        SendNUIMessage({action = "setVoiceLevel", level = 1})
        TriggerEvent('cs_hud:Notify', 'Saltychat', 'Sprachreichweite 3,5M', '#ff7800', 'notify', 'notify', 5000)
        voicelevel = 1

        end
        if voiceRange == 8 then
        SendNUIMessage({action = "setVoiceLevel", level = 2})
        TriggerEvent('cs_hud:Notify', 'Saltychat', 'Sprachreichweite 8M', '#ff7800', 'notify', 'notify', 5000)
        voicelevel = 2

        end
        if voiceRange == 15 then
        SendNUIMessage({action = "setVoiceLevel", level = 3})
        TriggerEvent('cs_hud:Notify', 'Saltychat', 'Sprachreichweite 15M', '#ff7800', 'notify', 'notify', 5000)
        voicelevel = 3
        end
        
        if voiceRange == 32 then
        SendNUIMessage({action = "setVoiceLevel", level = 4})
        TriggerEvent('cs_hud:Notify', 'Saltychat', 'Sprachreichweite 32M', '#ff7800', 'notify', 'notify', 5000)
        voicelevel = 4
        end
    end
end)