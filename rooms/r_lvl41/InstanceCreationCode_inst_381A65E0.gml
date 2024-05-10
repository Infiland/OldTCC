music3bugfix()
audio_stop_sound(m_warp);
audio_stop_sound(m_bosswin);

if global.world2time = 0 {
instance_create(x,y,o_showworldtimeHUD)	
}

global.world2time = global.time - global.world1time