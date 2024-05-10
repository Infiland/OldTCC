audio_stop_all()
/*var directory = working_directory + "/LevelEditor Files/" + global.levelname + "/Music.ogg"
audio_destroy_stream(directory)*/
instance_destroy(o_ammocounter)
instance_destroy(o_deathcounter)
instance_destroy(o_musicdistortion)
room_goto(r_mainmenu)
global.LES = 0