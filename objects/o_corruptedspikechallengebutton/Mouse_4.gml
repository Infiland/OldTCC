if global.world4 = 1 {
room_goto(r_cslvl1)
rousr_dissonance_set_timestamps(0,undefined)
rousr_dissonance_set_details("Playing Corrupted Spike Challenge")
global.challenges = 1
loadhud()
audio_stop_sound(m_funmodemusic)
global.currentchallenge = 15
audio_play_sound(m_somethingswrong,0,1)
audio_sound_gain(m_somethingswrong,global.musicvolume,1)
}