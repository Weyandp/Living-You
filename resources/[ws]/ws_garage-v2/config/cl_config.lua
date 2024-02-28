WS = {}

WS.esx = {
    prefix = "esx",
    sharedObject = {
        event = "esx:getSharedObject",
        export = { 
            use = false,
            get = function()
                return exports["es_extended"]:getSharedObject()
            end
        }
    }
}

WS.UI = {
    title = "Living-You",
    subTitle = "GARAGE",
    text = "Wähle ein Fahrzeug aus um es zu auszuparken oder zu verwalten."
}

WS.settings = {
    parkInUi = true, -- if true park-in in ui is active, if false the delete point is active
    parkInRange = 25.0,
    loadDelay = 0, -- delay in ms to load the vehicles
    onCarSpawn = function(vehicle)
        SetVehRadioStation(vehicle, "OFF") -- Radio aus
        -- SetVehicleDoorsLocked(vehicle, 2) -- Fahrzeug abgeschlossen
        -- SetVehicleEngineOn(vehicle, true, true, true) -- Fahrzeug Motor an
        -- TaskWarpPedIntoVehicle(PlayerPedId() vehicle, -1) -- Spieler ins Fahrzeug setzen
    end
}

WS.saveFuel = {
    enabled = true,
    getFuel = function(vehicle, cb)
        cb(exports["myFuel"]:GetFuel(vehicle))
    end,
    setFuel = function(vehicle, amount)
        exports["myFuel"]:SetFuel(vehicle, amount)
    end
}

WS.blips = {
    ["car"] = {
        sprite = 357,
        display = 4,
        scale = 0.8,
        color = 64,
        shortrange = true,
        text = "Garage"
    },
    ["boat"] = {
        sprite = 410,
        display = 4,
        scale = 0.8,
        color = 1,
        shortrange = true,
        text = "Bootsgarage"
    },
    ["airplane"] = {
        sprite = 423,
        display = 4,
        scale = 0.8,
        color = 1,
        shortrange = true,
        text = "Flugzeuggarage"
    },
    ["impound"] = {
        sprite = 357,
        display = 4,
        scale = 0.8,
        color = 75,
        shortrange = true,
        text = "Abschlepphof"
    },
}

WS.marker = {
    typ = 21,
    move = false,
    rotate = true,
    enabled = true,
    drawDistance = 30,
    color = {
        r = 255,
        g = 120,
        b = 0,
        t = 100
    },
    size = {
        x = 1.0,
        y = 1.0,
        z = 1.0
    }
}

WS.language = {
    ["lang"] = "de",
    ["de"] = {
        helpNotify = "Drücke E um zu interagieren",
        parkedOut = "Du hast das Fahrzeug %s ausgeparkt",
        parkingSpotsOccupied = "Alle Ausparkpunkte sind besetzt",
        parkedOutPlate = "Du hast dein Fahrzeug mit dem Kennzeichen %s für %s$ (%s) ausgeparkt",
        notEnaughMoney = "Du hast nicht genug Geld (%s$)",
        notYourCar = "Dieses Fahrzeug gehört dir nicht",
        driverSeatNotFree = "Der Fahrersitz muss leer sein um das Fahrzeug einparken zu können",
        nicknameChanged = "Du hast den Nickname von dem Fahrzeug mit dem Kennzeichen %s erfolgreich geändert",
        parkedIn = "Du hast das Fahrzeug %s eingeparkt",
        favState = "Du hast das Fahrzeug mit dem Kennzeichen %s favorisiert",
        notFavState = "Du hast das Fahrzeug mit dem Kennzeichen %s entfavorisiert",
        noNameProvided = "Keinen Namen angegeben",
        cash = "Bar",
        bank = "Bank",

        ui_parkOut = "AUSPARKEN",
        ui_parkIn = "EINPARKEN",
        ui_searchPlaceholder = "Suchen ...",
        ui_editCarName = "Fahrzeugnamen editieren",
        ui_submitCarName = "Bestätigen",
        ui_plate = "Kennzeichen",

        ui_nickname_title = "NAMEN",
        ui_nickname_subTitle = "ÄNDERN",
        ui_nickname_text = "Hier kannst du den Nickname von deinem Fahrzeug ändern.",
        ui_nickname_btn_done = "ÄNDERN",
        ui_nickname_btn_cancel = "ABBRECHEN",
        ui_nickname_placeholder = "Name",
    },
}

WS.impounds = {
    {
        type = "car",
        coords = vector3(-157.5571, -1175.3083, 23.0441),
        spawnPoint = {
            heading = 1.7341,
            coords = vector3(-161.0840, -1182.8081, 23.0441)
        }
    },
    {
        type = "car",
        coords = vector3(205.6299, -3056.0811, 5.8362),
        spawnPoint = {
            heading = 41.5316,
            coords = vector3(211.2455, -3047.1797, 5.8376)
        }
    },
    {
        type = "car",
        coords = vector3(2339.0024, 3139.6792, 48.2042),
        spawnPoint = {
            heading = 92.1290,
            coords = vector3(2329.0659, 3138.4158, 48.1602)
        }
    },
    {
        type = "car",
        coords = vector3(-199.1535, 6233.7290, 31.5025),
        spawnPoint = {
            heading = 221.0753,
            coords = vector3(-202.0136, 6217.7549, 31.4902)
        }
    },
}

WS.garages = {
    {
        name = "Richman Gargage",
        type = "car",
        coords = vector3(-1686.5045166016, 56.011283874512, 64.133193969727),
        delete = vector3(-1714.7153, 63.4653, 66.4081),
        spawnPoints = {
            {
                coords = vector3(-1691.4906005859,55.247943878174,64.307342529297),
                heading = 341.64,
                radius = 1.0 
            },
            {
                coords = vector3(-1694.0277099609,57.832069396973,64.482704162598),
                heading = 341.64,
                radius = 1.0 
            },
            {
                coords = vector3(-1696.6636962891,60.288917541504,64.675300598145),
                heading = 341.64,
                radius = 1.0 
            },
            {
                coords = vector3(-1699.3717041016,62.699604034424,64.874992370605),
                heading = 341.64,
                radius = 1.0 
            },
        },

    },
    {
        name = "Meeting Point",
        type = "car",
        coords = vector3(1791.5442, 4590.2827, 37.6829),
        delete = vector3(1772.2852, 4584.7632, 37.6723),
        spawnPoints = {
            {
                coords = vector3(1789.5219, 4583.8540, 37.2854),
                heading = 179.8438,
                radius = 1.0 
            },
            {
                coords = vector3(1785.3296, 4583.4707, 37.4201),
                heading = 183.5630,
                radius = 1.0 
            },
            {
                coords = vector3(1793.2960, 4585.0083, 37.2061),
                heading = 192.2975,
                radius = 1.0 
            },
            {
                coords = vector3(1797.5872, 4584.9668, 36.9838),
                heading = 185.3536,
                radius = 1.0 
            },
        },
    },
    {
        name = "Tuner-Blonds",
        type = "car",
        coords = vector3(-567.37, -888.77, 25.16),
        delete = vector3(-567.37, -888.77, 25.16),
        spawnPoints = {
            {
                coords = vector3(-556.47, -908.29, 23.27),
                heading = 179.8438,
                radius = 1.0 
            },
            {
                coords = vector3(-559.8, -908.12, 23.27),
                heading = 183.5630,
                radius = 1.0 
            },
            {
                coords = vector3(-564.15, -906.5, 24.17),
                heading = 192.2975,
                radius = 1.0 
            },
        },
    },
    {
        name = "Tuner Point",
        type = "car",
        coords = vector3(161.0213, -2989.7424, 5.9228),
        delete = vector3(161.0213, -2989.7424, 5.9228),
        spawnPoints = {
            {
                coords = vector3(163.9590, -2993.2053, 5.9186),
                heading =  271.6255,
                radius = 1.0 
            },
            {
                coords = vector3(163.5952, -2996.1667, 5.9279),
                heading = 271.6255,
                radius = 1.0 
            },
        },
    },
    {
        name = "Rockford Hills",
        type = "car",
        coords = vector3(1697.2184, 3595.4893, 35.6124),
        delete = vector3(1699.4181, 3602.4243, 35.4475),
        spawnPoints = {
            {
                coords = vector3(1714.9044, 3597.2026, 35.2830),
                heading = 111.6023,
                radius = 1.0 
            },
            {
                coords = vector3(1712.0985, 3600.5002, 35.2749),
                heading = 103.9736,
                radius = 1.0 
            },
            
        }
    },
    {
        name = "Pillbox Garage",
        type = "car",
        coords = vector3(1828.5110, 2554.6582, 47.2136),
        delete = vector3(1854.5088, 2536.2617, 45.6721),
        spawnPoints = {
            {
                coords = vector3(1855.5160, 2552.8118, 45.6720),
                heading = 272.5782,
                radius = 1.0 
            },
            {
                coords = vector3(1855.7048, 2549.2371, 45.6720),
                heading = 266.8323,
                radius = 1.0 
            },
            {
                coords = vector3(1855.5701, 2545.3198, 45.6720),
                heading = 270.0387,
                radius = 1.0 
            },
            
        }
    },
    {    
        name = "Airport Garage",
        type = "car",
        coords = vector3(-1135.0245, 2681.9731, 18.3642),
        delete = vector3(-1156.2634, 2671.9006, 18.0949),
        spawnPoints = {
            {
                coords = vector3(-1138.6648, 2674.7173, 18.0939),
                heading = 233.0779,
                radius = 1.0 
            },
            {
                coords = vector3(-1153.6707, 2660.1355, 18.0939),
                heading = 219.7314,
                radius = 1.0 
            },
            
        }
    },
    {
        name = "Fightclub",
        type = "car",
        coords = vector3(-2205.5945, 4243.0054, 48.2601),
        delete = vector3(-2223.3745, 4238.3599, 46.9004),
        spawnPoints = {
            {
                coords = vector3(-2211.0381, 4244.5776, 47.5711),
                heading = 42.6964,
                radius = 1.0 
            },
            {
                coords = vector3(-2212.9541, 4242.0913, 47.5294),
                heading = 44.4012,
                radius = 1.0 
            },
            {
                coords = vector3(-2214.7253, 4239.4775, 47.4366),
                heading = 42.4445,
                radius = 1.0 
            },
            {
                coords = vector3(-2217.2302, 4237.8496, 47.3345),
                heading = 44.3994,
                radius = 1.0 
            },
        }
    },
    {
        name = "Pipeline Garage",
        type = "car",
        coords = vector3(-2961.5747, 376.5680, 15.0131),
        delete = vector3(-2977.0359, 356.6973, 14.7838),
        spawnPoints = {
            {
                coords = vector3(-2962.9241, 366.8085, 14.7699),
                heading = 38.3366,
                radius = 1.0 
            },
            {
                coords = vector3(-2965.0764, 364.3171, 14.7699),
                heading = 34.5269,
                radius = 1.0 
            },
            {
                coords = vector3(-2966.7058, 361.6486, 14.7699),
                heading = 60.6081,
                radius = 1.0 
            },
        }
    },
    {
        name = "Obsevatorium",
        type = "car",
        coords = vector3(-1184.1920, -1509.6437, 4.6493),
        delete = vector3(-1197.4415, -1483.6428, 4.3797),
        spawnPoints = {
            {
                coords = vector3(-1190.1273, -1503.8339, 4.3703),
                heading = 309.9719,
                radius = 1.0 
            },
            {
                coords = vector3(-1194.7281, -1496.2595, 4.3797),
                heading = 342.5536,
                radius = 1.0 
            },
            {
                coords = vector3(-1187.5317, -1491.4800, 4.3797),
                heading = 126.2485,
                radius = 1.0 
            },
            {
                coords = vector3(-1189.3584, -1489.0785, 4.3797),
                heading = 112.3818,
                radius = 1.0 
            },
            
            
        }
    },
    {
        name = "Paleto Garage",
        type = "car",
        coords = vector3(-73.2252, -2004.1990, 18.2753),
        delete = vector3(-71.3314, -1997.3068, 18.0170),
        spawnPoints = {
            {
                coords = vector3(-80.8328, -2003.8124, 18.0170),
                heading = 347.9875,
                radius = 1.0 
            },
            {
                coords = vector3(-84.8058, -2003.2900, 18.0170),
                heading =356.4422,
                radius = 1.0 
            },
            {
                coords = vector3(-88.3560, -2002.9164, 18.0170),
                heading =357.2451,
                radius = 1.0 
            },
            
        }
    },
    {
        name = "Highway Garage",
        type = "car",
        coords = vector3(-833.1642, -2351.2566, 14.5706),
        delete = vector3(-829.1823, -2340.6934, 14.5706),
        spawnPoints = {
            {
                coords = vector3(-829.1823, -2340.6934, 14.5706),
                heading = 331.3300,
                radius = 1.0 
            },
            {
                coords = vector3(-822.8289, -2357.8206, 14.5707),
                heading = 329.6031,
                radius = 1.0 
            },
            {
                coords = vector3(-820.1800, -2359.6216, 14.5707),
                heading = 327.4431,
                radius = 1.0 
            },
        }
    },
    {
        name = "Sandy Garage",
        type = "car",
        coords = vector3(1036.3092, -763.2454, 57.9930),
        delete = vector3(1022.3445, -767.3113, 57.9658),
        spawnPoints = {
            {
                coords = vector3(1030.9858, -773.4328, 58.0592),
                heading = 140.4821,
                radius = 1.0 
            },
            {
                coords = vector3(1027.9482, -771.6144, 58.0380),
                heading = 146.2009,
                radius = 1.0 
            },
            {
                coords = vector3(1024.5587, -778.3002, 57.9459),
                heading = 311.3221,
                radius = 1.0 
            },
            {
                coords = vector3(1022.0167, -775.4366, 57.9457),
                heading = 305.4498,
                radius = 1.0 
            },
            
        }
    },
    {
        name = "SG Garage",
        type = "car",
        coords = vector3(213.6265, -809.1218, 31.0149),
        delete = vector3(230.7042, -792.1927, 30.6175),
        spawnPoints = {
            {
                coords = vector3(217.1925, -799.3695, 30.7825),
                heading = 68.1446,
                radius = 1.0 
            },
            {
                coords = vector3(218.4500, -793.9484, 30.7726),
                heading = 63.1923,
                radius = 1.0 
            },
            {
                coords = vector3(221.4974, -786.6737, 30.7739),
                heading = 73.1179,
                radius = 1.0 
            },
        }
    },
    {
        name = "Casino Garage",
        type = "car",
        coords = vector3(-354.6620, -127.7524, 39.4307),
        delete = vector3(-370.9534, -107.6424, 38.6810),
        spawnPoints = {
            {
                coords = vector3(-382.6256, -133.6081, 38.6856),
                heading = 300.3073,
                radius = 1.0 
            },
            {
                coords = vector3(-384.6937, -130.3887, 38.6849),
                heading = 300.1900,
                radius = 1.0 
            },
            {
                coords = vector3(-386.3034, -127.5751, 38.6818),
                heading = 301.5912,
                radius = 1.0 
            },
        }
    },
    {
        name = "Beach Garage",
        type = "car",
        coords = vector3(655.0408, 588.7328, 129.0509),
        delete = vector3(666.7722, 632.4988, 128.9111),
        spawnPoints = {
            {
                coords = vector3(642.8625, 589.9856, 128.9109),
                heading = 344.8127,
                radius = 1.0 
            },
            {
                coords = vector3(639.5062, 591.4965, 128.9109),
                heading = 326.7095,
                radius = 1.0 
            },
            {
                coords = vector3(636.2159, 592.4639, 128.9109),
                heading = 19.5638,
                radius = 1.0 
            },
            {
                coords = vector3(632.5673, 593.4553, 128.9109),
                heading = 343.4153,
                radius = 1.0 
            },
            
        }
    },
    {
        name = "Staatsbank Garage",
        type = "car",
        coords = vector3(-620.4865, 337.6042, 85.1167),
        delete = vector3(-599.6127, 343.4180, 85.1169),
        spawnPoints = {
            {
                coords = vector3(-612.3898, 332.9891, 85.1167),
                heading = 2.1919,
                radius = 1.0 
            },
            {
                coords = vector3(-608.5659, 332.7623, 85.1167),
                heading = 359.4031,
                radius = 1.0 
            },
            {
                coords = vector3(-608.4423, 343.2067, 85.1169),
                heading = 177.9855,
                radius = 1.0 
            },
            {
                coords = vector3(-612.0781, 343.7498, 85.1169),
                heading = 175.2238,
                radius = 1.0 
            },
        }
    },
    {
        name = "O'Neil Garage",
        type = "car",
        coords = vector3(-77.5698, 910.5811, 235.8008),
        delete = vector3(-67.7194, 890.7670, 235.5508),
        spawnPoints = {
            {
                coords = vector3(-72.8336, 902.7005, 235.6365),
                heading = 113.5397,
                radius = 1.0 
            },
            {
                coords = vector3(-71.6648, 899.5984, 235.5822),
                heading = 115.5300,
                radius = 1.0 
            },
            {
                coords = vector3(-70.7048, 896.8383, 235.4857),
                heading = 117.4464,
                radius = 1.0 
            },
        
        }
    },
    {
        name = "Grove Str. Garage",
        type = "car",
        coords = vector3(4461.9688, -4468.6226, 4.2444),
        delete = vector3(4498.5562, -4459.6689, 4.2184),
        spawnPoints = {
            {
                coords = vector3(4474.5938, -4463.7588, 4.2449),
                heading = 198.2415,
                radius = 1.0 
            },
            {
                coords = vector3(4481.9019, -4461.7427, 4.2424),
                heading = 174.6881,
                radius = 1.0 
            },
            {
                coords = vector3(4489.1938, -4459.4414, 4.2356),
                heading = 201.0905,
                radius = 1.0 
            },
            
        }
    },
    {
        name = "Boot Garage 1",
        type = "boat",
        coords = vector3(4938.2295, -5178.0693, 2.4682),
        delete = vector3(4913.3042, -5176.5376, 2.2733),
        spawnPoints = {
            {
                coords = vector3(4933.0054, -5169.7788, 1.4592),
                heading = 65.0397,
                radius = 1.0 
            },
            {
                coords = vector3(4928.9136, -5180.4927, 1.3104),
                heading = 61.0893,
                radius = 1.0 
            },
            
        }
    },
    {
        name = "Boot Garage 2",
        type = "boat",
        coords = vector3(-730.9018, -1318.7852, 1.5955),
        delete = vector3(-706.7968, -1334.5522, 1.5838),
        spawnPoints = {
            {
                coords = vector3(-724.5194, -1329.3491, 1.4425),
                heading = 229.5460,
                radius = 1.0 
            },
            {
                coords = vector3(-729.8666, -1335.2825, 2.2986),
                heading = 222.2050,
                radius = 1.0 
            },
            {
                coords = vector3(-736.9506, -1342.4745, 1.5329),
                heading = 218.1350,
                radius = 1.0 
            },
        }
    },
    {
        name = "Boot Garage 3",
        type = "boat",
        coords = vector3(1309.0651, 4231.8755, 33.9155),
        delete = vector3(1317.8138, 4246.2124, 31.1826),
        spawnPoints = {
            {
                coords = vector3(1314.0487, 4219.3706, 32.2499),
                heading = 260.4119,
                radius = 1.0 
            },
        }
    },
    {
        name = "Flugzeug1",
        type = "airplane",
        coords = vector3(-1012.6478, -3025.9807, 13.9451),
        delete = vector3(-985.9116, -2969.6963, 13.9424),
        spawnPoints = {
            {
                coords = vector3(-1000.6839, -3000.1526, 13.9451),
                heading = 57.5092,
                radius = 1.0 
            },
        }
    },
    {
        name = "Flugzeug2",
        type = "airplane",
        coords = vector3(1726.1780, 3287.5056, 41.1399),
        delete = vector3(1734.8259, 3237.0093, 41.6392),
        spawnPoints = {
            {
                coords = vector3(1716.5931, 3254.3501, 41.1284),
                heading = 102.6259,
                radius = 1.0 
            },
        }
    },
    {
        name = "Flugzeug3",
        type = "airplane",
        coords = vector3(2138.2251, 4796.4702, 41.1219),
        delete = vector3(2088.9402, 4770.3110, 41.2152),
        spawnPoints = {
            {
                coords = vector3(2120.8350, 4804.1182, 41.1959),
                heading = 113.9880,
                radius = 1.0 
            },
        }
    },
    {
        name = "Cypress_Flats Garage",
        type = "car",
        coords = vector3(722.3836, -2016.5677, 29.2920),
        delete = vector3(718.6604, -2023.1937, 29.2920),
        spawnPoints = {
            {
                coords = vector3(722.2660, -2030.4072, 29.2851),
                heading = 357.2159,
                radius = 1.0 
            },
            {
                coords = vector3(725.4338, -2030.3170, 29.2864),
                heading = 354.5720,
                radius = 1.0 
            },
            {
                coords = vector3(728.4054, -2030.3726, 29.2813),
                heading = 350.6689,
                radius = 1.0 
            },
        },  
    }, 
    {
        name = "Pillbox [Meeting Point] Garage",
        type = "car",
        coords = vector3(100.5963, -1073.3195, 29.3741),
        delete = vector3(119.9395, -1057.6163, 29.1924),
        spawnPoints = {
            {
                coords = vector3(104.3259, -1078.6627, 29.1924),
                heading = 341.4517,
                radius = 1.0 
            },
            {
                coords = vector3(108.0278, -1079.6688, 29.1927),
                heading = 343.7637,
                radius = 1.0 
            },
            {
                coords = vector3(111.6185, -1080.1595, 29.1924),
                heading = 341.9446,
                radius = 1.0 
            },
        },
    },
    {
        name = "Terminal [Container] Garage",
        type = "car",
        coords = vector3(765.0535, -3208.1729, 6.0337),
        delete = vector3(779.0788, -3192.3757, 5.9008),
        spawnPoints = {
            {
                coords = vector3(774.2202, -3213.9573, 5.9008),
                heading = 7.4117,
                radius = 1.0 
            },
            {
                coords = vector3(777.0059, -3213.7368, 5.9008),
                heading = 339.7380,
                radius = 1.0 
            },
            {
                coords = vector3(780.0165, -3213.0002, 5.9008),
                heading = 1.6157,
                radius = 1.0 
            },
            
        },
    },
    {
        name = "LCN Garage",
        type = "car",
        coords = vector3(-1541.9714, -437.7228, 35.5967),
        delete = vector3(-1513.3879, -422.6461, 35.4421),
        spawnPoints = {
            {
                coords = vector3(-1534.3563, -435.7601, 35.4421),
                heading = 230.2727,
                radius = 1.0 
            },
            {
                coords = vector3(-1532.2356, -432.9700, 35.4421),
                heading = 229.7061,
                radius = 1.0 
            },
            {
                coords = vector3(-1530.0391, -430.3458, 35.4421),
                heading = 231.3993,
                radius = 1.0 
            },
            {
                coords = vector3(-1527.9467, -427.5330, 35.4421),
                heading = 231.3993,
                radius = 1.0 
            },
            {
                coords = vector3(-1525.4265, -425.1190, 35.4422),
                heading = 231.3993,
                radius = 1.0 
            },
            {
                coords = vector3(-1523.2739, -422.5987, 35.4422),
                heading = 231.3993,
                radius = 1.0 
            },            
        },
    },
    {
        name = "Paintball Garage",
        type = "car",
        coords = vector3(-304.4159, -1024.6980, 30.3798),
        delete = vector3(-291.0070, -1026.0140, 30.3798),
        spawnPoints = {
            {
                coords = vector3(-304.2449, -1013.3694, 30.3851),
                heading = 250.4319,
                radius = 1.0 
            },
            {
                coords = vector3(-303.5537, -1010.2808, 30.3851),
                heading = 249.2700,
                radius = 1.0 
            },
            {
                coords = vector3(-302.7105, -1007.5018, 30.3851),
                heading = 252.0151,
                radius = 1.0 
            },

        },
    },
    {
        name = "Garage am Blond's",
        type = "car",
        coords = vector3(-896.6232, -2030.1445, 9.4096),
        delete = vector3(-896.6232, -2030.1445, 9.4096),
        spawnPoints = {
            {
                coords = vector3(-881.9445, -2049.3979, 9.2992),
                heading = 39.0231,
                radius = 1.0 
            },
            {
                coords = vector3(-884.5491, -2051.7822, 9.2992),
                heading = 45.9839,
                radius = 1.0 
            },
            {
                coords = vector3(-886.9243, -2054.3003, 9.3066),
                heading = 54.6363,
                radius = 1.0 
            },
            {
                coords = vector3(-887.6406, -2040.9801, 9.2992),
                heading = 54.6363,
                radius = 1.0 
            },
        },
    },
    {
        name = "GMBH Garage",
        type = "car",
        coords = vector3(738.9197, 1265.4755, 360.2447),
        delete = vector3(734.1564, 1278.7472, 360.2956),
        spawnPoints = {
            {
                coords = vector3(732.2015, 1292.4226, 360.2957),
                heading = 185.3188,
                radius = 1.0 
            },

        },
    },
    {
        name = "Chumash Garage",
        type = "car",
        coords = vector3(-3143.5906, 1122.6379, 20.8513),
        delete = vector3(-3135.2656, 1127.7146, 20.6925),
        spawnPoints = {
            {
                coords = vector3(-3141.3433, 1117.0607, 20.7016),
                heading = 291.1147,
                radius = 1.0 
            },
            {
                coords = vector3(-3141.8650, 1113.6837, 20.7001),
                heading = 276.6464,
                radius = 1.0 
            },
            {
                coords = vector3(-3143.7261, 1110.1700, 20.7019),
                heading = 289.7830,
                radius = 1.0 
            },

        },
    },
    {
        name = "sons",
        type = "car",
        coords = vector3(966.4046, -140.2695, 74.4311),
        delete = vector3(966.4046, -140.2695, 74.4311),
        spawnPoints = {
            {
                coords = vector3(973.8964, -128.5057, 74.2345),
                heading = 138.8235,
                radius = 1.0 
            },

        },
    },
    {
        name = "Abschlepphof Garage #1",
        type = "car",
        coords = vector3(-154.5924, -1175.3269, 24.0004),
        delete = vector3(-131.8088, -1178.5145, 23.7696),
        spawnPoints = {
            {
                coords = vector3(-132.0247, -1182.1614, 23.7696),
                heading = 90.7871,
                radius = 1.0 
            },
            {
                coords = vector3(-131.9726, -1178.6133, 23.7696),
                heading = 91.2150,
                radius = 1.0 
            },
            {
                coords = vector3(-131.8451, -1175.1115, 23.7696),
                heading = 90.2286,
                radius = 1.0 
            },
        },
    },
    {
        name = "Abschlepphof Garage #1",
        type = "car",
        coords = vector3(2339.6091, 3142.3196, 48.2048),
        delete = vector3(2334.8640, 3149.3381, 48.2044),
        spawnPoints = {
            {
                coords = vector3(2334.8640, 3149.3381, 48.2044),
                heading = 15.1048,
                radius = 1.0 
            },
        },
    },
    {
        name = "Abschlepphof Garage #1",
        type = "car",
        coords = vector3(-197.4600, 6235.3652, 31.4998),
        delete = vector3(-190.3970, 6225.8159, 31.4893),
        spawnPoints = {
            {
                coords = vector3(-190.3970, 6225.8159, 31.4893),
                heading = 141.7195,
                radius = 1.0 
            },
        },
    },
}

function Notify(msg)
    TriggerEvent("cs_hud:Notify", "info", msg, 5000)
end

function HelpNotify(msg)
    SetTextComponentFormat("STRING")
    TriggerEvent('cs_hud:HelpUI', 'E', msg)
    DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end