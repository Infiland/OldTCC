if global.world3 = 1 {
if global.challenges = 1749610 {
if !instance_exists(o_demoask) {instance_create(x,y,o_demoask)}
exit
}
global.DiamondMedalTimeChallenge = 94.5
room_goto(r_movinglvl1)
rousr_dissonance_set_timestamps(0,undefined)
rousr_dissonance_set_details("Playing Moving Challenge")
global.challenges = 1
loadhud()
audio_stop_sound(m_funmodemusic)
global.currentchallenge = 12
audio_play_sound(m_everythingismoving,0,1)
audio_sound_gain(m_everythingismoving,global.musicvolume,1)
}