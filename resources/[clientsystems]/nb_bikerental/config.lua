Config = {}
-- If you want people to have cooldown on renting a bike 
-- You can put 0 if you dont
Config.Cooldowntime = 100 -- Seconds
-- Blips 
Config.EnableBlips = true
Config.BlipSprite = 376
Config.BlipDisplay = 4
Config.BlipScale = 0.65
Config.BlipColour = 2
Config.BlipName = "Fahrrad Verleih"
-- Points for bikes
Config.KolaPointy = {
    vector3(236.2703, -929.6713, 29.5451),
    vector3(-989.1181, -2646.9932, 13.9750)
}
-- Putting price as 0 will automatically make it free
-- If you want another Bike just do the same
-- Example
--[[ 
    ThirdBike = {
    name = 'Sanchez ',
    price = 0,
    spawncode = 'Sanchez'
    } 
]]
Config.Kolamore = {
    FirstBike = {
        name = 'BMX ',
        price = 150,
        spawncode = 'bmx'
    },
    SecondBike = {
        name = 'Cruiser ',
        price = 0,
        spawncode = 'cruiser'
    }
}
