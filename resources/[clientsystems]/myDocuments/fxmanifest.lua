fx_version 'bodacious'
game 'gta5'

ui_page 'html/index.html'

author 'Flo from myScripts'
description 'myDocuments'
version '1.0.0'

lua54 'yes'

escrow_ignore {
	'config.lua',
	'client.lua',
	'server.lua',
}

server_scripts {
    '@mysql-async/lib/MySQL.lua',
    'config.lua',
    'server.lua',
}
  
client_scripts {
    -- "@NativeUILua_Reloaded/src/NativeUIReloaded.lua",
    'config.lua',
    'client_escrow.lua',
    'client.lua',
}



files {
    'html/index.html',
    
    'html/css/all.css',
    'html/css/boat.css',
    'html/css/businesscard.css',
    'html/css/drive.css',
    'html/css/fly.css',
    'html/css/hunting.css',
    'html/css/idcard.css',
    'html/css/lawyer.css',
    'html/css/md.css',
    'html/css/pd.css',
    'html/css/weapon.css',
    'html/css/fontawesome.css',
    'html/css/menu.css',

    'html/img/bu_female.png',
    'html/img/bu_male.png',
    'html/img/businessCardPreview.png',
    'html/img/boat.png',
    'html/img/boatPreview.png',
    'html/img/drive.png',
    'html/img/drivePreview.png',
    'html/img/female.png',
    'html/img/fly.png',
    'html/img/flyPreview.png',
    'html/img/hunting.png',
    'html/img/huntingPreview.png',
    'html/img/idcard.png',
    'html/img/idcardPreview.png',
    'html/img/lawyer.png',
    'html/img/lawyerPreview.png',
    'html/img/male.png',
    'html/img/md.png',
    'html/img/mdPreview.png',
    'html/img/md_logo.png',
    'html/img/pd.png',
    'html/img/pdPreview.png',
    'html/img/pd_logo.png',
    'html/img/weapon.png',
    'html/img/weaponPreview.png',

    'html/js/script.js',
    'html/js/jquery-3.5.1.min.js',
    'html/config.json',

    'html/webfonts/hamburgHand.woff',
    'html/webfonts/keepCalm.woff',
    'html/webfonts/madeTommyMedium.woff',
    'html/webfonts/madeTommyRegular.woff',
    'html/webfonts/signature.woff',
    'html/webfonts/thedus.woff',
}

export 'GetGiveableLicenses'
dependency '/assetpacks'