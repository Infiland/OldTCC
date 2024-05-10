if global.skin017 = 1 {
room_goto(r_world7lvl1)
global.DiamondMedalTimeChallenge = 2097.9
rousr_dissonance_set_timestamps(0,undefined)
rousr_dissonance_set_details("Playing World Seven Challenge")
global.challenges = 1
loadhud()
audio_stop_sound(m_funmodemusic)
global.currentchallenge = 16
audio_play_sound(m_funmodelevels2,0,1)
audio_sound_gain(m_funmodelevels2,global.musicvolume,1)
}