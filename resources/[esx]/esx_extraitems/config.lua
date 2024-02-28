Config = {}
Config.Locale = 'en' -- Set Locale file to use.

Config.Removeables = {
	-- true = Removes if/when used.
	Bandage = true,
	BulletProofVest = true,
	Defib = false,
	Drill = false,
	Firework = true,
	FirstAidKit = true,
	LifeRaft = true,
	OxygenMask = true,
	CleanKit = true,
	RepairKit = true,
	TireKit = true,
	WeaKit = false,
	handcuffs = true,
	AmmoBoxes = true,
	-- true = Removes if Failed.
	LockPick = true
}

-- Item Scenario Wait Times in Miliseconds.
Config.Wait = {
	Drill = 10000,
	LockPick = 10000,
	CleanKit = 10000,
	RepairKit = 10000,
	TireKit = 10000
}

-- Health Kits
Config.HealthKits = {
	Heal = false, -- true = Will allow First Aid Kits to Heal Players. | false = Will give 'Config.HealGive' Bandages.
	HealGive = 3, -- Amount of Bandages to Give if Config.Heal = false.
	BandageHP = 10 -- How much HP Bandages will Heal a Player.
}

-- Binoculars
Config.BinocularsPutAway = 177 -- Backspace Key

-- Life Raft
Config.LifeRaft = {
	Use = false, -- true = Will allow Players to spawn a Life Raft.
	Veh = 'lraft' -- Must provide your Own Model.
}

-- Oxygen Mask
Config.Scuba = {
	Wait1 = 2.5, -- How long in Minutes before it gets to 75% Oxygen.
	Wait2 = 2.5, -- How long in Minutes before it gets to 50% Oxygen.
	Wait3 = 2.5, -- How long in Minutes before it gets to 25% Oxygen.
	Wait4 = 2.5 -- How long in Minutes before it gets to 0% Oxygen.
}

-- Repair Kits
Config.RepairKit = {
	EngOnly = false, -- true = Will only Repair Engine. | false = Will Repair the Entire Vehicle.
	EngHealth = 1.0, -- If 'EngOnly' is true how much should the Engine Health be Repaired to. Value must be between (1.0 - 1000.0).
	Emergency = true, -- true = Will give Emergency Services 'EmergEngHealth' Value | false = Will give Emergency Services 'EngHealth' Value
	EmergEngHealth = 0.1 -- If 'EngOnly' & 'Emergency' = true how much should the Engine Health be Repair to for Emergency Services.
}

-- Weapon Ammos
Config.AmmoBoxes = {
	-- Advanced
	Pistol = 50, -- Amount of Pistol Ammo to Give. | 9mm @ 0.28 per round | 50 x 1.05 = 14
	SMG = 50, -- Amount of SMG Ammo to Give. | 9mm @ 0.28 per round | 50 x 1.05 = 14
	Shotgun = 25, -- Amount of Shotgun Ammo to Give. | 12g @ 0.36 per round | 25 x 0.36 = 9
	Rifle = 25, -- Amount of Assault Rifle Ammo to Give. | 5.56 @ 0.47 per round | 25 x 0.47 = 11.75 (12)
	MG = 50, -- Amount of LMG Ammo to Give. | 5.56 @ 0.47 per round | 50 x 0.47 = 23.50 (24)
	Sniper = 20, -- Amount of Sniper Rifle Ammo to Give. | 7.62 @ 1.05 per round | 20 x 1.05 = 21
	Flare = 5, -- Amount of Flare Gun Ammo to Give.
	-- Basic
	BoxBig = 100, -- Amount of Box Big Ammo to Give.
	BoxSmall = 50 -- Amount of Box Small Ammo to Give.
}

Config.WeaponList = {
	Pistols = {
		'WEAPON_APPISTOL',
		'WEAPON_CERAMICPISTOL',
		'WEAPON_COMBATPISTOL',
		'WEAPON_DOUBLEACTION',
		'WEAPON_GADGETPISTOL',
		'WEAPON_HEAVYPISTOL',
		'WEAPON_REVOLVER',
		'WEAPON_REVOLVER_MK2',
		'WEAPON_MARKSMANPISTOL',
		'WEAPON_NAVYREVOLVER',
		'WEAPON_PISTOL',
		'WEAPON_PISTOL_MK2',
		'WEAPON_PISTOL50',
		'WEAPON_SNSPISTOL',
		'WEAPON_SNSPISTOL_MK2',
		'WEAPON_VINTAGEPISTOL',
		'WEAPON_MACHINEPISTOL',
	},
	SMGs = {
		'WEAPON_ASSAULTSMG',
		'WEAPON_COMBATPDW',
		'WEAPON_MICROSMG',
		'WEAPON_MINISMG',
		'WEAPON_SMG',
		'WEAPON_SMG_MK2',
	},
	Shotguns = {
		'WEAPON_ASSAULTSHOTGUN',
		'WEAPON_AUTOSHOTGUN',
		'WEAPON_BULLPUPSHOTGUN',
		'WEAPON_COMBATSHOTGUN',
		'WEAPON_DBSHOTGUN',
		'WEAPON_HEAVYSHOTGUN',
		'WEAPON_MUSKET',
		'WEAPON_PUMPSHOTGUN',
		'WEAPON_PUMPSHOTGUN_MK2',
		'WEAPON_SAWNOFFSHOTGUN',
	},
	Rifles = {
		'WEAPON_ADVANCEDRIFLE',
		'WEAPON_ASSAULTRIFLE',
		'WEAPON_ASSAULTRIFLE_MK2',
		'WEAPON_BULLPUPRIFLE',
		'WEAPON_BULLPUPRIFLE_MK2',
		'WEAPON_CARBINERIFLE',
		'WEAPON_CARBINERIFLE_MK2',
		'WEAPON_COMPACTRIFLE',
		'WEAPON_MILITARYRIFLE',
		'WEAPON_SPECIALCARBINE',
		'WEAPON_SPECIALCARBINE_MK2',
	},
	MGs = {
		'WEAPON_COMBATMG',
		'WEAPON_COMBATMG_MK2',
		'WEAPON_GUSENBERG',
		'WEAPON_MG',
	},
	Snipers = {
		'WEAPON_HEAVYSNIPER',
		'WEAPON_HEAVYSNIPER_MK2',
		'WEAPON_MARKSMANRIFLE',
		'WEAPON_MARKSMANRIFLE_MK2',
		'WEAPON_SNIPERRIFLE',
	},
	Flares = {
		'WEAPON_FLAREGUN'
	}
}
