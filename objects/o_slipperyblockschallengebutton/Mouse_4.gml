if global.world2 = 1 { 
room_goto(r_slipperylvl1)
rousr_dissonance_set_timestamps(0,undefined)
rousr_dissonance_set_details("Playing Slippery Challenge")
global.challenges = 1
loadhud()
audio_stop_sound(m_funmodemusic)
global.currentchallenge = 5
if global.music = 1 {
audio_play_sound(m_emptyambient,0,1)
audio_sound_gain(m_emptyambient,global.musicvolume,1)
}}