if global.world3 = 1 {
if global.challenges = 1749610 {
if !instance_exists(o_demoask) {instance_create(x,y,o_demoask)}
exit
}
room_goto(r_speedlvl1)
global.DiamondMedalTimeChallenge = 105
rousr_dissonance_set_timestamps(0,undefined)
rousr_dissonance_set_details("Playing Speed Challenge")
global.challenges = 1
loadhud()
audio_stop_sound(m_funmodemusic)
global.currentchallenge = 6
audio_play_sound(m_funmodelevels,0,1)
audio_sound_gain(m_funmodelevels,global.musicvolume,1)
}