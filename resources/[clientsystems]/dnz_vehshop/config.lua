--Security Settings
dnz_system = {}
dnz_system.Token = "DNZ941088518275962324" -- Security Token @dnz.wtf
dnz_system.getSharedObject = "esx:getSharedObject" -- Shared Object
dnz_system.WebHook = ''
dnz_system.ScriptName = 'dnz_vehshop' -- Scriptname

-- Config

Config = {}

Config.PlateLetters  = 4 -- MAX 4
Config.PlateNumbers  = 4 -- MAX 4
Config.PlateUseSpace = false  -- True if you want a space in between the numbers and letters. Not working if both are above 4 | If PlateUseSpace and PlateUseHyphen are both false the numbers and letters will be put togheter.
Config.PlateUseHyphen = false -- True if you want to have a hyhen (-) in between the numbers and letters. Not working if both are above 4 | If PlateUseSpace and PlateUseHyphen are both false the numbers and letters will be put togheter.
Config.TestDriveTime = 30   -- TIME in SEC
Config.PreviewPlate = "Living-You"


-- Blip
Config.BlipSettings = {
scale = 0.5,
colour = 3,
display = 4
}





-- Help Message
Config.HelpMessage1 = "Druecke ~r~E~w~ um "
Config.HelpMessage2 = " zu oeffnen."

Config.Language = 'de' 
Config.Languages = {
	['de'] = {
        ["enough_money"] = "Du hast nicht genug Geld auf deinem Bank Konto!",
		['testdrivetext'] = 'Übrige Zeit für die Testfahrt ',
		['info'] = 'INFORMATION',
		['error'] = 'FEHLER',
		['success'] = 'ERFOLG',
		['testdrive'] = 'TESTFAHRT',
		['traction'] = 'TRAKTION',
		['maxspeed'] = 'GESCHWINDIGKEIT',
		['acceleration'] = 'BESCHLEUNIGUNG',
		['breaking'] = 'BREMSEN',
		['infos'] = 'DU KANNST SPÄTER DEIN FAHRZEUG BEIM TUNER UMFÄRBEN LASSEN.',
 		['colors'] = 'FARBEN',
		['colors_show'] = '(SHOWCASE)',
		['rotate'] = 'NUTZE A UND D&#10;UM DAS FAHRZEUG ZU ROTIEREN',
		['buy'] = 'KAUFEN',
		['search'] = 'SUCHEN',
		['wrongJob'] = 'Du bist nicht berechtigt in diesem Autohaus einzukaufen.'
	},
    ['en'] = {
        ["enough_money"] = "You don't have enough money in your bank account!",
		['testdrivetext'] = 'Time left for the test drive ',
		['info'] = 'INFORMATION',
		['error'] = 'ERROR',
		['success'] = 'SUCCESS',
		['testdrive'] = 'TEST DRIVE',
		['traction'] = 'TRACTION',
		['maxspeed'] = 'SPEED',
		['acceleration'] = 'ACCELERATION',
		['breaking'] = 'BRAKES',
		['infos'] = 'YOU CAN LATER RECOLOR YOUR VEHICLE AT THE TUNER.',
 		['colors'] = 'COLOURS',
		['colors_show'] = '(SHOWCASE)',
		['rotate'] = 'USE A AND D&#10;TO ROTATE THE VEHICLE',
		['buy'] = 'BUY',
		['search'] = 'SEARCH',
		['wrongJob'] = 'You are not allowed to shop in this dealership.'
	},
	['tr'] = {
        ["enough_money"] = "Banka hesabınızda yeterli paranız yok!",
		['testdrivetext'] = 'Test sürüşü için kalan süre ',
		['info'] = 'BİLGİ',
		['error'] = 'HATA',
		['success'] = 'BAŞARI',
		['testdrive'] = 'TEST SÜRÜŞÜ',
		['traction'] = 'ÇEKİŞ',
		['maxspeed'] = 'HIZ',
		['acceleration'] = 'HIZLANMA',
		['breaking'] = 'FRENLER',
		['infos'] = 'DAHA SONRA ARACINIZIN RENKLENDİRİLMESİNİ TUNERDE YAPTIRABİLİRSİNİZ.',
 		['colors'] = 'RENKLER',
		['colors_show'] = '(VİTRİN)',
		['rotate'] = 'A VE D KULLAN&#10;ARACI DÖNDÜRMEK İÇİN',
		['buy'] = 'SATIN ALMAK',
		['search'] = 'ARAMA',
		['wrongJob'] = 'Bu bayiden alışveriş yapma yetkiniz yok.'
	}
}

Config.Shops = {
    ['pdm'] = {
        ['ShopLabel'] = 'Premium Deluxe Motorsport', -- Blip name
        ['Type'] = 'car', -- Shop Type
		['Job'] = false, -- Job that the Vehicle is getting inserted and is needed to open the Shop. False if you want to disbale it.
		['JobGrade'] = false, -- Job that the Vehicle is getting inserted and is needed to open the Shop. False if you want to disbale it.
        ['showBlip'] = true,  --- true or false
        ['Location'] = vector3(-33.57, -1097.06, 27.27), -- Blip Location
        ['VehicleSpawn'] = vector4(-12.33, -1082.78, 26.57, 186.26), -- Spawn location when vehicle is bought
    },
    ['luxury'] = {
        ['ShopLabel'] = 'Luxury Vehicle Shop', -- Blip name
        ['Type'] = 'aircraft', -- Shop Type
		['Job'] = false, -- Job Grade that the Vehicle is getting inserted and is needed to open the Shop. False if you want to disbale it.
		['JobGrade'] = false, -- Job Grade that is needed to open the Shop. False if you want to disbale it.
        ['showBlip'] = true,  --- true or false
        ['Location'] = vector3(-1366, 56.89, 54.1), -- Blip Location
        ['VehicleSpawn'] = vector4(-1390.5, 59.59, 53.81, 131.03), -- Spawn location when vehicle is bought
    }
}

Config.Vehicles = {
	--- Compacts
	['brioso'] = {
		['name'] = 'Brioso',
		['brand'] = 'Grotti',
		['model'] = 'brioso',
		['price'] = 4000,
		['category'] = 'compacts',
		['hash'] = `brioso`,
		['shop'] = 'pdm',
	},
	['weevil'] = {
		['name'] = 'Weevil',
		['brand'] = 'BF',
		['model'] = 'weevil',
		['price'] = 4000,
		['category'] = 'compacts',
		['hash'] = `weevil`,
		['shop'] = 'pdm',
	},
	--- Bike
	['enduro'] = {
		['name'] = 'Enduro',
		['brand'] = 'Dika',
		['model'] = 'enduro',
		['price'] =  3000,
		['category'] = 'bike',
		['hash'] = `enduro`,
		['shop'] = 'pdm',
	},
	['blazer4'] = {
		['name'] = 'Blazer',
		['brand'] = 'Nagasaki',
		['model'] = 'blazer4',
		['price'] =  3000,
		['category'] = 'bike',
		['hash'] = `blazer4`,
		['shop'] = 'pdm',
	},
	--- Sedan
	['faction2'] = {
		['name'] = 'Faction',
		['brand'] = 'Willard',
		['model'] = 'faction2',
		['price'] =  7000,
		['category'] = 'sedan',
		['hash'] = `faction2`,
		['shop'] = 'pdm',
	},
	['chino2'] = {
		['name'] = 'Chino',
		['brand'] = 'Vapid',
		['model'] = 'chino2',
		['price'] =  7000,
		['category'] = 'sedan',
		['hash'] = `chino2`,
		['shop'] = 'pdm',
	},



}
