if global.world3 = 1 {
room_goto(r_trooplvl1)
rousr_dissonance_set_timestamps(0,undefined)
rousr_dissonance_set_details("Playing Troop Challenge")
global.challenges = 1
loadhud()
audio_stop_sound(m_funmodemusic)
global.currentchallenge = 4
if global.music = 1 {
audio_play_sound(m_troopsincoming,0,1)
audio_sound_gain(m_troopsincoming,global.musicvolume,1)
}}