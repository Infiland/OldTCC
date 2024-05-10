if global.world4 = 1 {
room_goto(r_communitylvl1)
rousr_dissonance_set_timestamps(0,undefined)
rousr_dissonance_set_details("Playing Community Challenge")
global.challenges = 1
loadhud()
audio_stop_sound(m_funmodemusic)
global.currentchallenge = 13
audio_play_sound(m_forthefans,0,1)
audio_sound_gain(m_forthefans,global.musicvolume,1)
}