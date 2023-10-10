fx_version 'adamant'
game 'gta5'
author 'Everyone'
description 'Complied Script needed for missing ESX actions'


files {
	"html/bb_index.html",
    'driveby/clip_set.xml',
	'driveby/vehiclelayouts.meta',
	"bb_js.js",
	"png/option_1.png",
	"png/option_2.png",
	"png/option_3.png",
	"png/dice_1.png",
	"png/dice_2.png",
	"png/dice_3.png",
	"png/dice_4.png",
	"png/dice_5.png",
	"png/dice_6.png",
    'audio/sfx/resident/ambience.awc',
    'audio/sfx/resident/animals_footsteps.awc',
    'audio/sfx/resident/collision.awc',
    'audio/sfx/resident/collisions.awc',
    'audio/sfx/resident/doors.awc',
    'audio/sfx/resident/explosions.awc',
    'audio/sfx/resident/feet_materials.awc',
    'audio/sfx/resident/feet_resident.awc',
    'audio/sfx/resident/frontend.awc',
    'audio/sfx/resident/low_latency.awc',
    'audio/sfx/resident/melee.awc',
    'audio/sfx/resident/movement.awc',
    'audio/sfx/resident/player_switch.awc',
    'audio/sfx/resident/vehicles.awc',
    'audio/sfx/resident/weapons.awc',
    'audio/sfx/resident/weather.awc',

    'audio/sfx/weapons_player/lmg_combat.awc',
    'audio/sfx/weapons_player/lmg_mg_player.awc',
    'audio/sfx/weapons_player/mgn_sml_am83_vera.awc',
    'audio/sfx/weapons_player/mgn_sml_am83_verb.awc',
    'audio/sfx/weapons_player/mgn_sml_sc_l.awc',
    'audio/sfx/weapons_player/ptl_50cal.awc',
    'audio/sfx/weapons_player/ptl_combat.awc',
    'audio/sfx/weapons_player/ptl_pistol.awc',
    'audio/sfx/weapons_player/ptl_px4.awc',
    'audio/sfx/weapons_player/ptl_rubber.awc',
    'audio/sfx/weapons_player/sht_bullpup.awc',
    'audio/sfx/weapons_player/sht_pump.awc',
    'audio/sfx/weapons_player/smg_micro.awc',
    'audio/sfx/weapons_player/smg_smg.awc',
    'audio/sfx/weapons_player/smg_heavy.awc',
    'audio/sfx/weapons_player/snp_rifle.awc',
    'audio/sfx/weapons_player/spl_grenade_player.awc',
    'audio/sfx/weapons_player/spl_minigun_player.awc',
    'audio/sfx/weapons_player/spl_prog_ar_player.awc',
    'audio/sfx/weapons_player/spl_railgun.awc',
    'audio/sfx/weapons_player/spl_rpg_player.awc',
    'audio/sfx/weapons_player/spl_tank_player.awc'
}


client_script{
    'client/fingerpoint.lua',
    'client/handsup.lua',
    "client/cl_takehostage.lua",
    "client/cl_vehiclepush.lua",
    "client/unarmed_knockout.lua",
    "client/cl_traffic.lua",
    "client/cl_vehiclecontrol.lua",
    "client/cl_holograms.lua",
    "client/bb_c.lua",
    "client/config.lua",
	"client/traffic.lua",
    "client/cl_policeweapondelete.lua"
} 

server_script{
    "server/sv_takehostage.lua",
    "server/bb_s.lua",
    "server/sv_policeweapondelete.lua"
}

data_file 'CLIP_SETS_FILE' 'driveby/clip_set.xml'
data_file 'VEHICLE_LAYOUTS_FILE' 'driveby/vehiclelayouts.meta'

shared_script '@es_extended/imports.lua'