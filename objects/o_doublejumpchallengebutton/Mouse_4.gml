if global.world2 = 1 {
room_goto(r_djlvl1)
rousr_dissonance_set_timestamps(0,undefined)
rousr_dissonance_set_details("Playing Double Jump Challenge")
global.challenges = 1
loadhud()
audio_stop_sound(m_funmodemusic)
global.currentchallenge = 14
audio_play_sound(m_stealth,0,1)
audio_sound_gain(m_stealth,global.musicvolume,1)
}