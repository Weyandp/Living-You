fx_version 'adamant'
game 'gta5'


this_is_a_map 'yes'
lua54 'yes'

data_file 'INTERIOR_PROXY_ORDER_FILE' 'interiorproxies.meta'


files {
    "interiorproxies.meta",
    "gabz_timecycle_mods_1.xml"
}

client_script "client/main.lua"

-- LSC HAFEN ---
data_file 'DLC_ITYP_REQUEST' 'stream/portels_1a.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/portels_2a.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/portels_3a.ytyp'
data_file 'DLC_ITYP_REQUEST' 'stream/portels_4a.ytyp'
-- LSC HAFEN ---

data_file 'TIMECYCLEMOD_FILE' 'gabz_timecycle_mods_1.xml'
dependency '/assetpacks'