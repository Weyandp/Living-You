function Notify(typ, title, message, time)
    TriggerEvent("ws_notify", GetNotifyType(typ), title, message, time)
end

function HelpNotify(msg)
    BeginTextCommandDisplayHelp("STRING")
    AddTextComponentSubstringPlayerName(msg)
    EndTextCommandDisplayHelp(0, 0, 1, -1)
end

function OpenWardrobe()
    if GetResourceState("ws_clothshop") ~= "started" then
        print("ws_clothshop is not started!")
        return
    end
    exports["ws_clothshop"]:openClotheShop(false, true)
end

function OpenGarage(pos)
    -- pos.vec3 = vector3 coords
    -- pos.vec4 = vector4 coords
    if GetResourceState("ws_garage") ~= "started" then
        print("ws_garage is not started!")
        return
    end
    exports["ws_garage"]:openMenu("car", pos.vec3, pos.vec4.w)
end

function GetNotifyType(val)
    local types = {
        "info",
        "success",
        "warning",
        "error"
    }

    return (types[val] == nil and "info") or types[val]
end