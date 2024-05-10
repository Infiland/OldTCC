if instance_exists(o_leveleditorleaveask) { exit }

if global.writingmode = 0 {

if instance_exists(o_namelevelLE) { exit }
audio_play_sound(snd_hitboss,0,0)
instance_destroy(o_waterleveleditorline)

if global.LEMode = 1 { 
	global.LEMode = 2
	global.time = 0
	global.deaths = 0
	global.LESavedWinTime = 0
	instance_create(x,y,o_time)
	instance_create(x,y,o_timecounter)
	instance_create(x,y,o_deathcounter)
	global.LEVerified = 1
	rousr_dissonance_set_details("Playing a Level - " + global.levelname)
	} else {
		global.time = 0
		global.LESavedWinTime = 0
		instance_destroy(o_time)
		instance_destroy(o_timecounter)
		instance_destroy(o_deathcounter)
		global.LEMode = 1
		rousr_dissonance_set_details("Making a Level - " + global.levelname)
		}
image_index = global.LEMode - 1

depth = -700

}