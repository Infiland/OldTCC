if global.world4 = 1 {
if global.challenges = 1749610 {
if !instance_exists(o_demoask) {instance_create(x,y,o_demoask)}
exit
}
room_goto(r_spikelvl1)
rousr_dissonance_set_timestamps(0,undefined)
rousr_dissonance_set_details("Playing Spike Challenge")
global.challenges = 1
loadhud()
global.DiamondMedalTimeChallenge = 135
audio_stop_sound(m_funmodemusic)
global.currentchallenge = 10
audio_play_sound(m_basics,0,1)
audio_sound_gain(m_basics,global.musicvolume,1)
}