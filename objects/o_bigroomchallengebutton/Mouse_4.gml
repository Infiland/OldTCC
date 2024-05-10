if global.world2 = 1 {
rousr_dissonance_set_timestamps(0,undefined)
rousr_dissonance_set_details("Playing Big Room Challenge")
room_goto(r_bigroomlvl1)
global.DiamondMedalTimeChallenge = 150
global.challenges = 1
loadhud()
audio_stop_sound(m_funmodemusic)
global.currentchallenge = 3
audio_play_sound(m_funmodelevels3,0,1)
audio_sound_gain(m_funmodelevels3,global.musicvolume,1)
}