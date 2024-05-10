if global.world3 = 1 {

room_goto(r_waterlvl1)
global.DiamondMedalTimeChallenge = 101.2
rousr_dissonance_set_timestamps(0,undefined)
rousr_dissonance_set_details("Playing Water Challenge")
global.challenges = 1
loadhud()
audio_stop_sound(m_funmodemusic)
global.currentchallenge = 11
audio_play_sound(m_underwater,0,1)
audio_sound_gain(m_underwater,global.musicvolume,1)
}