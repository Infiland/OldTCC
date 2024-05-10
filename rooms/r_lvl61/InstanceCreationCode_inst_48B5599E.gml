music4bugfix()
audio_stop_sound(m_bosswin)

if global.world3time = 0 {
instance_create(x,y,o_showworldtimeHUD)	
}

global.world3time = global.time - (global.world1time + global.world2time)

if global.world3time < 240 {
if global.endless = 0 {
if global.cheats = 0 {
if !steam_get_achievement("WORLD_3_QUICK") { steam_set_achievement("WORLD_3_QUICK") }
}}}