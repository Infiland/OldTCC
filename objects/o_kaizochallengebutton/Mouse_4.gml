if global.world5 = 1 {
room_goto(r_kaizolvl1)
rousr_dissonance_set_timestamps(0,undefined)
rousr_dissonance_set_details("Playing Kaizo Challenge")
global.challenges = 1
loadhud()
audio_stop_sound(m_funmodemusic)
global.currentchallenge = 1
if global.music = 1 {
audio_play_sound(m_funmodelevels,0,1)
audio_sound_gain(m_funmodelevels,global.musicvolume,1)
}
}