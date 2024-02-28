WS = {}

WS.settings = { -- edit the ui logos and headlines
    title = "Living-You",
    logoUrl = "https://cdn.discordapp.com/attachments/1158056826718392410/1208790034249949284/dd.png?ex=65e49072&is=65d21b72&hm=383565713f238fb265c49b992dd1e1eafa8aa967c9f050ad8f423bc3ab9ae7f4&",
    defaultAmmoCount = 30, -- default ammo for weapons
    getSharedObject = "esx:getSharedObject",
    es1_2 = true, -- true if using es_extended 1.2 (weight and xPlayer.canCarryItem), false if using es_extended 1.1 (limit)
    weaponLicense = {
        enabled = true,
        price = 10000,
        shopType = "weaponshop",
        licenseName = "weapon"
    }
}

WS.titles = { -- set a shop header label here
    ["supermarket"] = "Supermarkt",
    ["weaponshop"] = "Waffenshop",
    ["blackmarket"] = "Schwarzmarkt",
    ["applestore"] = "Applestore",
}

WS.language = {
    helpNotify = "Drücke E um den Shop zu öffnen",
    successfullyPurchased = "Du hast erfolgreich einen Einkauf für %s$ getätigt",
    purchaseFailed = "Du hast nicht genügend Geld (%s$)",
    notEnaughInventorySpace = "Du hast nicht genügend Platz im Inventar",
    buyLicenseText = "Kaufen für %s$",
    exitBuyMenu = "Abbrechen",
    boughtLicense = "Du hast eine Waffenlizenz für %s$ gekauft",
    noLicense = "Du hast keine Waffenlizenz"
}

WS.blips = {
    ["supermarket"] = { -- category name
        enabled = true,
        sprite = 52,
        display = 4,
        scale = 1.0,
        color = 64,
        shortrange = true,
        text = "Supermarkt"
    },
    ["weaponshop"] = {
        enabled = true,
        sprite = 110,
        display = 4,
        scale = 1.0,
        color = 64,
        shortrange = true,
        text = "Waffenshop"
    },
    ["blackmarket"] = {
        enabled = false,
        sprite = 487,
        display = 4,
        scale = 1.0,
        color = 75,
        shortrange = true,
        text = "Schwarzmarkt"
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

WS.shopPositions = {
    -- Supermarket
    {coords = vector3(373.875, 325.896, 103.566), type = "supermarket"},
    {coords = vector3(2557.458, 382.282, 108.622), type = "supermarket"},
    {coords = vector3(-3038.939, 585.954, 7.908), type = "supermarket"},
    {coords = vector3(-3241.927, 1001.462, 12.830), type = "supermarket"},
    {coords = vector3(1961.464, 3740.672, 32.343), type = "supermarket"},
    {coords = vector3(2678.916, 3280.671, 55.241), type = "supermarket"},
    {coords = vector3(1729.216, 6414.131, 35.037), type = "supermarket"},
    {coords = vector3(1135.808, -982.281, 46.415), type = "supermarket"},
    {coords = vector3(-1222.915, -906.983, 12.326), type = "supermarket"},
    {coords = vector3(-1487.553, -379.107, 40.163), type = "supermarket"},
    {coords = vector3(-2968.243, 390.910, 15.043), type = "supermarket"},
    {coords = vector3(1166.024, 2708.930, 38.157), type = "supermarket"},
    {coords = vector3(1392.562, 3604.684, 34.980), type = "supermarket"},
    {coords = vector3(127.830, -1284.796, 29.280), type = "supermarket"},
    {coords = vector3(-559.906, 287.093, 82.176), type = "supermarket"},
    {coords = vector3(-48.519, -1757.514, 29.421), type = "supermarket"},
    {coords = vector3(1163.373, -323.801, 69.205), type = "supermarket"},
    {coords = vector3(-707.501, -914.260, 19.215), type = "supermarket"},
    {coords = vector3(-1820.523, 792.518, 138.118), type = "supermarket"},
    {coords = vector3(1698.388, 4924.404, 42.063), type = "supermarket"},
    {coords = vector3(-406.47, 6062.57, 31.5), type = "supermarket"},
    {coords = vector3(26.16, -1346.84, 29.48), type = "supermarket"},
    {coords = vector3( 201.9836, -866.5945, 29.7187), type = "supermarket"},
    {coords = vector3(-1039.19, -2761.2, 20.84), type = "supermarket"},


    -- Weaponshop
    {coords = vector3(814.7182, -2153.5337, 29.6192), type = "weaponshop"},
    {coords = vector3(1695.7748, 3757.0667, 34.7053), type = "weaponshop"},
    {coords = vector3(-328.2247, 6081.0010, 31.4548), type = "weaponshop"},
    {coords = vector3(248.7319, -50.1626, 69.9413), type = "weaponshop"},
    {coords = vector3(16.5265, -1109.1776, 29.7972), type = "weaponshop"},
    {coords = vector3(2566.4607, 297.5144, 108.7350), type = "weaponshop"},
    {coords = vector3(-1114.6837, 2697.0386, 18.5543), type = "weaponshop"},
    {coords = vector3(842.8181, -1030.0980, 28.1949), type = "weaponshop"},
    {coords = vector3(-660.8019, -938.5167, 21.8294), type = "weaponshop"},
    {coords = vector3(-3168.9719, 1085.9753, 20.8387), type = "weaponshop"},
    {coords = vector3(-1309.1287, -392.9063, 36.6958), type = "weaponshop"},

    -- Blackmarkets
    {coords = vector3(-345.6379,3746.0596, 69.9520), type = "blackmarket"},
}

WS.shopItems = {
    ["supermarket"] = { -- shop type
        ["Essen"] = { -- Shop Category
            {
                name = "burger",
                label = "Burger",
                price = 20,
                type = "item"
            },
            {
                name = "bread",
                label = "Brot",
                price = 20,
                type = "item"
            },
            {
                name = "doener",
                label = "Doener",
                price = 250,
                type = "item"
            },
            {
                name = "fischplatte",
                label = "Fischplatte",
                price = 250,
                type = "item"
            },

        },
        ["Trinken"] = { -- Shop Category
            {
                name = "water",
                label = "Water",
                price = 10,
                type = "item"
            },
            {
                name = "espresso",
                label = "Espresso",
                price = 150,
                type = "item"
            },
            {
                name = "rotwein",
                label = "Rotwein",
                price = 500,
                type = "item"
            },


        },
        ["Items"] = { -- Shop Category
            {
                name = "repairkit",
                label = "Repair Kit",
                price = 3000,
                type = "item"
            },
            {
                name = "gps",
                label = "GPS Tracker",
                price = 2000,
                type = "item"
            },
            {
                name = "phone",
                label = "Handy",
                price = 1500,
                type = "item"
            },
            {
                name = "handcuffs",
                label = "Seile",
                price = 750,
                type = "item"
            },
            {
                name = "vehicle_transfer_contract",
                label = "Kaufvertrag",
                price = 800,
                type = "item"
            },
        },
    },
    ["weaponshop"] = {
        ["Waffen"] = { -- Shop Category
            {
                name = "weapon_snspistol",
                label = "SNS Pistole",
                price = 150000,
                type = "weapon"
            },
        },
        ["Nahkampf"] = { -- Shop Category
            {
                name = "weapon_knife",
                label = "Messer",
                price = 100000,
                type = "weapon"
            },
            {
                name = "weapon_bat",
                label = "Baseball Schläger",
                price = 1250000,
                type = "weapon"
            },
        },
        ["Weiteres"] = { -- Shop Category
            {
                name = "clip",
                label = "Kleine Munitionsbox",
                price = 250,
                type = "item"
            },
            {
                name = "boxbig",
                label = "Große Munitionsbox",
                price = 500,      
                type = "item"
            },
        }
    },    
    ["blackmarket"] = { -- blackmarket = black_money will be used on both payment buttons
        ["Aufsatz"] = { -- Shop Category
            {
                name = "suppressor",
                label = "Schalldämpfer",
                price = 40000,
                type = "item"
            },
            {
                name = "clip_extended",
                label = "Erweitertes Magazin",
                price = 40000,
                type = "item"
            },
            {
                name = "grip",
                label = "Griff",
                price = 30000,
                type = "item"
            },
            {
                name = "flashlight",
                label = "Waffen Lampe",
                price = 30000,
                type = "item"
            },
        },
        ["Nahkampf"] = { -- Shop Category
            {
                name = "weapon_switchblade",
                label = "Klappmesser",
                price = 90000,
                type = "weapon"
            },
            {
                name = "weapon_machete",
                label = "Machete",
                price = 150000,
                type = "weapon"
            },
            {
                name = "weapon_knuckle",
                label = "Schlagring",
                price = 90000,
                type = "weapon"
            },
        }
    }
}

function Notify(msg)
    TriggerEvent("furkan_notify", "info", "Information", msg, 1000)
end

function HelpNotify(msg)
    SetTextComponentFormat("STRING")
    TriggerEvent('cs_hud:HelpUI', 'E', msg)
    DisplayHelpTextFromStringLabel(0, 0, 1, -1)
end  