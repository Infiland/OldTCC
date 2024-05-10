if global.world1 = 1 {
room_goto(r_breakablelvl1)
global.DiamondMedalTimeChallenge = 58.5
rousr_dissonance_set_timestamps(0,undefined)
rousr_dissonance_set_details("Playing Breakable Block Challenge")
global.challenges = 1
loadhud()
audio_stop_sound(m_funmodemusic)
global.currentchallenge = 18
audio_play_sound(m_blocktension,0,1)
audio_sound_gain(m_blocktension,global.musicvolume,1)
}