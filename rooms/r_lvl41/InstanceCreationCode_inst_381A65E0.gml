music3bugfix()
audio_stop_sound(m_warp);
audio_stop_sound(m_bosswin);

if global.world2time = 0 {
instance_create(x,y,o_showworldtimeHUD)	
}

global.world2time = global.time - global.world1time

if global.world2time < 180 {
if global.endless = 0 {
if global.cheats = 0 {
if !steam_get_achievement("WORLD_2_QUICK") { steam_set_achievement("WORLD_2_QUICK") }
}}}