if global.endless = 0 {
	
global.world1 = 1
global.world2 = 1
global.world3 = 1
global.world4 = 1
global.boss4 = 1
audio_stop_sound(m_corruptedworld)
audio_stop_sound(m_lesscorruption)
audio_stop_sound(m_bossprepare)
audio_stop_sound(m_lavatime)
audio_stop_sound(m_bosswin)
scr_checkachievements()
}
music5bugfix()

if global.world4time = 0 {
instance_create(x,y,o_showworldtimeHUD)	
}

global.world4time = global.time - (global.world1time + global.world2time + global.world3time)

if global.world4time < 300 {
if global.endless = 0 {
if global.cheats = 0 {
if !steam_get_achievement("WORLD_4_QUICK") { steam_set_achievement("WORLD_4_QUICK") }
}}}