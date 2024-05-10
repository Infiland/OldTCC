if global.world5 = 1 {
room_goto(r_world6lvl1)
rousr_dissonance_set_timestamps(0,undefined)
rousr_dissonance_set_details("Playing World Six Challenge")
global.challenges = 1
loadhud()
audio_stop_sound(m_funmodemusic)
global.currentchallenge = 7
if global.music = 1 {
audio_play_sound(m_world6,0,1)
audio_sound_gain(m_world6,global.musicvolume,1)
}
}