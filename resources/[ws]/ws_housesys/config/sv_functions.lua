function GetRealName(xPlayer)
    local name = nil 

    Query("SELECT firstname, lastname FROM users WHERE identifier = @identifier", {
        ['@identifier'] = xPlayer.identifier
    }, function(result)
        if result and result[1] then
            name = result[1].firstname .. " " .. result[1].lastname
        else
            name = xPlayer.getName()
        end
    end)

    repeat 
        Citizen.Wait(0)
    until(name ~= nil)

    return name 
end