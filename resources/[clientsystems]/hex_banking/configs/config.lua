Config = {}

Config.Debug = true
Config.Locale = 'de'
Config.Framework = 'ESX' -- currently only esx & qb support but you can easily add your framework via framework.lua

Config.Avatar = true -- need steam api linked in the server.cfg

Config.Banking = {
    useProps = false,

    blips = {
        enabled = true,
        sprite = 108,
        scale = 0.8,
        display = 4,
        color = 2,
        shortRange = true,
        text = 'Bank',

        positions = {
            vector3(150.266, -1040.203, 29.374),
            vector3(-1212.980, -330.841, 37.787),
            vector3(-2962.582, 482.627, 15.703),
            vector3(-112.202, 6469.295, 31.626),
            vector3(314.187, -278.621, 54.170),
            vector3(-351.534, -49.529, 49.042),
            vector3(241.727, 220.706, 106.286),
            vector3(-351.534, -49.529, 49.042),
            vector3(1175.064, 2706.643, 38.0940),
            vector3(111.17, -775.2, 31.44),
            vector3(5.24, -919.8, 29.56),
            vector3(119.05, -883.69, 31.12),
            vector3(-209.84, -861.39, 30.27),
            vector3(-303.28, -829.73, 32.42),
            vector3(-258.8, -723.47, 33.46),
            vector3(-596.41, -933.5, 23.89),
            vector3(-709.98, -8158.95, 23.73),
            vector3(-846.54, -340.81, 38.68),
            vector3(-866.61, -187.73, 37.83),
            vector3(-526.55, -1223.01, 18.45),
            vector3(-821.62, -1081.88, 11.13),
            vector3(1968.11, 3743.56, 32.34),
            vector3(1735.25, 6410.5, 35.04),
            vector3(1686.8, 4815.84, 42.01),
            vector3(1703.04, 4933.58, 42.06),
            vector3(-1030.76, -2777.19, 20.84),
            vector3(-32.09, -1104.3, 27.27),
            vector3(33.17, -1348.26, 29.5),
            vector3(-56.86, -1752.11, 29.42),
            vector3(1153.69, -326.82, 69.21),
            
            
        }
    },

    distance = 3.0,

    positions = {
        vector3(150.266, -1040.203, 29.374),
        vector3(-1212.980, -330.841, 37.787),
        vector3(-2962.582, 482.627, 15.703),
        vector3(-112.202, 6469.295, 31.626),
        vector3(314.187, -278.621, 54.170),
        vector3(-351.534, -49.529, 49.042),
        vector3(241.727, 220.706, 106.286),
        vector3(-351.534, -49.529, 49.042),
        vector3(1175.064, 2706.643, 38.0940),
        vector3(111.17, -775.2, 31.44),
        vector3(114.44, -776.39, 31.42),
        vector3(5.24, -919.8, 29.56),
        vector3(119.05, -883.69, 31.12),
        vector3(-303.28, -829.73, 32.42),
        vector3(-301.67, -830.01, 32.42),
        vector3(-258.8, -723.47, 33.46),
        vector3(-256.16, -716.09, 33.52),
        vector3(-596.41, -933.5, 23.89),
        vector3(-866.61, -187.73, 37.83),
        vector3(-867.59, -186.1, 37.84),
        vector3(-821.62, -1081.88, 11.13),
        vector3(1735.25, 6410.5, 35.04),
        vector3(-1030.76, -2777.19, 20.84),
        vector3(-1021.67, -2761.45, 20.84),
        vector3(-32.09, -1104.3, 27.27),
        vector3(33.17, -1348.26, 29.5),
        vector3(1166.71, -456.1, 66.82),
        vector3(1153.75, -326.8, 69.21),

        vector3(89.75, 2.35, 68.31),
        vector3(1167.02, -456.32, 66.79),
        vector3(-386.733, 6045.953, 31.501),
        vector3(-284.037, 6224.385, 31.187),
        vector3(-284.037, 6224.385, 31.187),
        vector3(-135.165, 6365.738, 31.101),
        vector3(166.1157, 6634.8408, 31.7106),
        vector3(-110.753, 6467.703, 31.784),
        vector3(-94.9690, 6455.301, 31.784),
        vector3(155.4300, 6641.991, 31.784),
        vector3(1703.138, 6426.783, 32.730),
        vector3(1735.114, 6411.035, 35.164),
        vector3(1702.842, 4933.593, 42.051),
        vector3(1967.333, 3744.293, 32.272),
        vector3(1821.917, 3683.483, 34.244),
        vector3(1174.532, 2705.278, 38.027),
        vector3(540.0420, 2671.007, 42.177),
        vector3(2564.399, 2585.100, 38.016),
        vector3(2558.683, 349.6010, 108.050),
        vector3(2558.051, 389.4817, 108.660),
        vector3(1077.692, -775.796, 58.218),
        vector3(1139.018, -469.886, 66.789),
        vector3(1168.975, -457.241, 66.641),
        vector3(1153.884, -326.540, 69.245),
        vector3(381.2827, 323.2518, 103.270),
        vector3(236.4638, 217.4718, 106.840),
        vector3(265.0043, 212.1717, 106.780),
        vector3(285.2029, 143.5690, 104.970),
        vector3(-164.568, 233.5066, 94.919),
        vector3(-1827.04, 785.5159, 138.020),
        vector3(-1409.39, -99.2603, 52.473),
        vector3(-1205.35, -325.579, 37.870),
        vector3(-1215.64, -332.231, 37.881),
        vector3(-2072.41, -316.959, 13.345),
        vector3(-2975.72, 379.7737, 14.992),
        vector3(-2962.60, 482.1914, 15.762),
        vector3(-2955.70, 488.7218, 15.486),
        vector3(-3044.22, 595.2429, 7.595),
        vector3(-3144.13, 1127.415, 20.868),
        vector3(-3241.10, 996.6881, 12.500),
        vector3(-3241.11, 1009.152, 12.877),
        vector3(-1305.40, -706.240, 25.352),
        vector3(-538.225, -854.423, 29.234),
        vector3(-711.156, -818.958, 23.768),
        vector3(-717.614, -915.880, 19.268),
        vector3(-526.566, -1222.90, 18.434),
        vector3(-256.831, -719.646, 33.444),
        vector3(-203.548, -861.588, 30.205),
        vector3(119.9000, -883.826, 31.191),
        vector3(149.4551, -1038.95, 29.366),
        vector3(-846.304, -340.402, 38.687),
        vector3(-1204.35, -324.391, 37.877),
        vector3(-1216.27, -331.461, 37.773),
        vector3(-56.1935, -1752.53, 29.452),
        vector3(-261.692, -2012.64, 30.121),
        vector3(-273.001, -2025.60, 30.197),
        vector3(314.187, -278.621, 54.170),
        vector3(-351.534, -49.529, 49.042),
        vector3(24.589, -946.056, 29.357),
        vector3(-254.112, -692.483, 33.616),
        vector3(-1570.197, -546.651, 34.955),
        vector3(-1415.909, -211.825, 46.500),
        vector3(-1430.112, -211.014, 46.500),
        vector3(33.232, -1347.849, 29.497),
        vector3(287.645, -1282.646, 29.659),
        vector3(289.012, -1256.545, 29.440),
        vector3(295.839, -895.640, 29.217),
        vector3(1686.753, 4815.809, 42.008),
        vector3(-925.2751, -2042.1862, 9.4025),
        vector3(193.4732, -872.4646, 29.7255),
        vector3(-1061.9474, -2835.0437, 27.7036),
        vector3( 155.9161, -3013.6895, 6.0219),
    },
    
    props = {
        joaat('prop_atm_01'),
        joaat('prop_atm_02'),
        joaat('prop_atm_03'),
        joaat('prop_fleeca_atm')
    }
}

Config.Locales = {
    ['de'] = {
        ['press_e'] = 'Drücke E um auf dein Bankkonto zuzugreifen!',
        ['deposit'] = 'Du hast %s$ auf dein Konto eingezahlt!',
        ['withdraw'] = 'Du hast %s$ auf dein Konto ausgezahlt!',
        ['success_transfer'] = 'Überweisung Erfolgreich!',
        ['transfer'] = 'Du hast %s$ von %s bekommen!',
        ['invalid'] = 'Ungültige Menge!',
        ['notsuccess'] = 'Diese Id ist nicht gültig!',
        ['webhook_date'] = "Am %s um %s",

        ['webhook_deposit'] = 'Der Spieler %s hat %s$ eingezahlt!',
        ['webhook_withdraw'] = 'Der Spieler %s hat %s$ ausgezahlt!',
        ['webhook_transfer'] = 'Der Spieler %s hat %s %s$ überwiesen!'
    },

    ['en'] = {
        ['press_e'] = 'Press E to access your bank account!',
        ['deposit'] = 'You have deposited %s$ to your account!',
        ['withdraw'] = 'You have withdrawed %s$ to your account!',
        ['success_transfer'] = 'Transfer Successful!',
        ['transfer'] = 'You got  %s$ from %s',
        ['invalid'] = 'Invalid quantity!',
        ['notsuccess'] = 'This Id is not valid!',
        ['webhook_date'] = "On %s at %s",

        ['webhook_deposit'] = 'The player %s has deposited %s$!',
        ['webhook_withdraw'] = 'The player %s has withdrawed %s$!',
        ['webhook_transfer'] = 'The player %s has transferred %s %s$!'
    }
}

function DrawHelpNotify(message)
    SetTextComponentFormat('STRING')
    TriggerEvent('cs_hud:HelpUI', 'E',message )
    DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end

function Notify(title, message)
    TriggerEvent('cs_hud:Notify', title, message)
end