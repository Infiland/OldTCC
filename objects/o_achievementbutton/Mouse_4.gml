if !instance_exists(o_quitask) {
scr_loadachievements()
window_set_cursor(cr_default)
room_goto(r_achievements)
audio_sound_pitch(m_mainmenu,1)	
audio_sound_gain(m_mainmenu,global.musicvolume,1)	
rousr_dissonance_set_details("Amazed at Achievements")
}