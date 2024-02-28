WS = {}

WS.settings = {
    getSharedObject = "esx:getSharedObject",
    price = 250, -- price for each change --
    saveprice = 0,
    useESXLegacy = true, -- or 1.2 --
    useOxMysql = true, -- change also in fxmanifest !! CURRENLY MYSQL ASYNC IS SUPPORTED ONLY, KEEP IT TRUE !!
}

WS.blip = {
    label = 'Kleidungsladen',
    sprite = 73,
    colour = 64,
    scale = 0.7,
    display = 4,
}

WS.cam = {
    offset = {0.8, 0.8, 1.0}, -- x, y, z offset coords of the camera: https://docs.fivem.net/natives/?_0x1899F328B0E12848
    fov = 75.0,
}

WS.marker = {
    typ = 21,
    move = false,
    rotate = true,
    enabled = true,
    drawDistance = 10.0,
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
    },
    offsetz = 3.0
}

WS.positions = {
    vector3(77.6118, -1398.5691, 28.5),
    vector3(-703.8, -152.3, 36.4),
    vector3(-167.9, -299, 38.7),
    vector3(423.43957, -800.2456, 28.5),
    vector3(-826.3364, -1078.3757, 10.3),
    vector3(-1447.8, -242.5, 48.8),
    vector3(7.7411, 6518.0576, 30.9),
    vector3(123.6, -219.4, 53.6),
    vector3(1690.9794, 4828.2485, 41.1),
    vector3(618.1, 2759.6, 41.1),
    vector3(1190.8525, 2708.0120, 37.2),
    vector3(-1193.4, -772.3, 16.3),
    vector3(-3172.5, 1048.1, 19.9),
    vector3(-1104.2123, 2705.2737, 18.1),
    vector3(-1103.89, -2793.79, 26.52),

}
WS.clothes = {
    "mask_1",
    "helmet_1",
    "chain_1",
    "glasses_1", 
    "torso_1",
    "tshirt_1",
    "bags_1",
    "bproof_1",
    "arms",
    "pants_1", 
    "decals_1", 
    "shoes_1",
}
-- current available skinchanger components (+ the _2 version this means the color variation): 
-- mask_1, helmet_1, chain_1, glasses_1, torso_1, tshirt_1, bags_1, bproof_1, arms, pants_1, decals_1, shoes_1

WS.blacklist = {
    --["mask_1"] = {23, 25}, -- example how to blacklist specific ids
    ["mask_1"] = {},
    ["helmet_1"] = {},
    ["chain_1"] = {},
    ["glasses_1"] = {}, 
    ["torso_1"] = {},
    ["tshirt_1"] = {},
    ["bags_1"] = {},
    ["bproof_1"] = {67},
    ["arms"] = {},
    ["pants_1"] = {}, 
    ["decals_1"] = {}, 
    ["shoes_1"] = {},
    
}

WS.blacklistedNameComponents = {"67", ">"}

WS.locales = {
    ["locale"] = {
        ['server_name'] = '',
        ['cloth_shop'] = {
            ['shop_title'] = {
                ['shop_title'] = '',
                ['left_top'] = 'Premium',
                ['left_middle'] = 'Kleidungsgeschäft',
                ['left_bottom'] = 'Willkommen im besten Luxusbekleidungsgeschäft im gesamten Bundesstaat',
            },
            ['texts'] = {
                ['rotate'] = 'Drehen Sie den Spieler um 360°',
                ['choice'] = 'Auswahl der Kleidungsvariante',
            },
            ['change_cloth'] = {
                ['title'] = 'Kleidungsvariation',
                ['view'] = 'Modell',
                ['color'] = 'Farbe',
                ['buy'] = 'Kaufen',
            },
            ['components'] = {
                ['title'] = 'Kategorie'
            }
        },
        ['outfit_selection'] = {
            ['selection'] = {
                ['title'] = 'Information',
                ['sub_title'] = 'Sie möchten das Bekleidungsgeschäft betreten oder bestehende Outfits verwalten',
                ['cloth_shop'] = 'Kleidungsgeschäft',
                ['outfits'] = 'Outfits',
            },
            ['change_name'] = {
                ['input_text'] = 'Ändern Sie den Namen',
                ['confirm'] = 'Bestätigen'
            },
            ['save'] = {
                ['title'] = 'Information',
                ['sub_title'] = 'Möchtest du das Outfit speichern? (+'..WS.settings.saveprice..'$)',
                ['save'] = 'Speichern',
                ['remove'] = "Nicht Speichern",
            },
        },
        ['wardrobe'] = {
            ['wardrobe_title'] = {
                ['top'] = 'Dein',
                ['middle'] = 'Kleiderschrank',
                ['bottom'] = 'Ihre Kleidung wird hier aufbewahrt, Sie können sie jederzeit wechseln oder wegwerfen',
            }
        },
    },
    ['game'] = {
        ['press_e'] = 'Drücke E um das Bekleidungsgeschäft zu eröffnen',
        ['has_enough_money'] = 'Du hast %s$ erfolgreich für das Outfit bezahlt', -- %s is the money value
        ['has_not_enough_money_outfit'] = "Du hast nicht genug Geld, um das Outfit zu bezahlen",
        ['has_not_enough_money_outfitsave'] = "Du hast nicht genug Geld, um das Outfit zu Speichern",
    },
    ["clothes"] = {
        ['mask_1'] = {
            ["color"] = 'mask_2',
            ["svg"] = 'mask',
            ["label"] = 'Mase'
        },
        ['helmet_1'] = {
            ["color"] = 'helmet_2',
            ["svg"] = 'cap',
            ["label"] = 'Hut'
        },
        ['chain_1'] = {
            ["color"] = 'chain_2',
            ["svg"] = 'chain',
            ["label"] = 'Kette'
        },
        ['glasses_1'] = {
            ["color"] = 'glasses_2',
            ["svg"] = 'glasses',
            ["label"] = 'Brille'
        },
        ['torso_1'] = {
            ["color"] = 'torso_2',
            ["svg"] = 'torso',
            ["label"] = 'Torso'
        },
        ['tshirt_1'] = {
            ["color"] = 'tshirt_2',
            ["svg"] = 'tshirt',
            ["label"] = 'T-Shirt'
        },
        ['bags_1'] = {
            ["color"] = 'bags_2',
            ["svg"] = 'backpack',
            ["label"] = 'Rucksack'
        },
        ['bproof_1'] = {
            ["color"] = 'bproof_2',
            ["svg"] = 'vest',
            ["label"] = 'Weste'
        },
        ['arms'] = {
            ["color"] = nil, -- there is no available color component
            ["svg"] = 'arms',
            ["label"] = 'Arme'
        },
        ['pants_1'] = {
            ["color"] = 'pants_2',
            ["svg"] = 'trousers',
            ["label"] = 'Hosen'
        },
        ['decals_1'] = {
            ["color"] = 'decals_2',
            ["svg"] = 'watch',
            ["label"] = 'Uhr'
        },
        ['shoes_1'] = {
            ["color"] = 'shoes_2',
            ["svg"] = 'shoes',
            ["label"] = 'Schuhe'
        },
    }
}

-- SERVER FUNCTIONS  --
function isBlacklistedName(name)
    for k, v in ipairs(WS.blacklistedNameComponents) do
        if string.find(name, v) then
            return true
        end
    end
    return false
end

function getPlayerMoney(xPlayer)
    if WS.settings.useESXLegacy then
        return xPlayer.getAccount('money').money -- both work in legacy --
    else
        return xPlayer.getMoney() -- esx 1.1 --
    end
end

function removePlayerMoney(xPlayer, amount)
    if WS.settings.useESXLegacy then
        xPlayer.removeAccountMoney('money', amount)
    else
        xPlayer.removeMoney(amount)
    end
end

-- CLIENT FUNTIONS --

-- if you want to use your own skinchanger, call the cb with the specific data skin --
-- this gets the player skin (table) --
function getSkin(cb)
    TriggerEvent('skinchanger:getSkin', function(skin)
        cb(skin)
    end)
end

-- this gets the min & max values of all available skin-components --
function getMaxValues(cb)
    TriggerEvent('skinchanger:getData', function(components, maxVals)
        cb(components, maxVals)
    end)
end

-- change the specific component --
function changeSkin(comp, index)
    TriggerEvent('skinchanger:change', comp, index)
end

function saveSkin(skin)
    TriggerServerEvent('esx_skin:save', skin)
end

-- load skin --
function loadSkin(skin)
    TriggerEvent('skinchanger:loadSkin', skin)
end

function loadClothes(clothes)
    getSkin(function(skin)
        TriggerEvent('skinchanger:loadClothes', skin, clothes)
    end)
end

function Notify(msg)
    TriggerEvent("furkan_notify", "info", "Information", msg, 5000)
end

function HelpNotify(msg)
    SetTextComponentFormat("STRING")
    TriggerEvent('cs_hud:HelpUI', 'E', msg)
    DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end