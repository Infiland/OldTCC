if global.world1 = 1 {
room_goto(r_ladderlvl1)
global.DiamondMedalTimeChallenge = 46
rousr_dissonance_set_timestamps(0,undefined)
rousr_dissonance_set_details("Playing Ladder Challenge")
global.challenges = 1
loadhud()
audio_stop_sound(m_funmodemusic)
global.currentchallenge = 8
audio_play_sound(m_owthespikes,0,1)
audio_sound_gain(m_owthespikes,global.musicvolume,1)
}