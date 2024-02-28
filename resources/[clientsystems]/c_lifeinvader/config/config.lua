C_SERVICE = {}

C_SERVICE.Positions = {
    vector3(-1082.0057, -247.9035, 37.7634)
}
C_SERVICE.MaxLetters = 150
C_SERVICE.MinLetters = 3
C_SERVICE.PricePerLetter = 2
C_SERVICE.MoneyAccount = "money"
C_SERVICE.LastVisibleAds = 10

C_SERVICE.Marker = {
    type = 21,
    scale = vector3(1.0, 1.0, 1.0),
    rgba = {
        r = 250,
        g = 133,
        b = 0,
        a = 39
    },
    bobUpAndDown = false,
    faceCamera = false,
    rotate = true,
    distance = 50.0,
    interactDistance = 2.0,
}

C_SERVICE.Blip = {
    sprite = 79,
    color = 67,
    label = "Tagesschau",
    scale = 0.8
}

function C_SERVICE.Notify(name, phoneNumber, text)
    TriggerEvent("c_lifeinvader", name, phoneNumber, text, 10000)
end

function C_SERVICE.Callnumber(number)
    -- Call number or something
end

function C_SERVICE.GetPhoneNumber(identifier)
    local row = MySQL.single.await('SELECT `phone_number` FROM `users` WHERE `identifier` = ? LIMIT 1', {
        identifier
    })

    if (row == nil or row.phone_number == nil) then
        return "No number found"
    end

    return row.phone_number
end

function C_SERVICE.HelpNotify(text)
    ESX.ShowHelpNotification(text)
end
