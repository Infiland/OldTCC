room_goto(r_tutorialchallengelvl1)
rousr_dissonance_set_timestamps(0,undefined)
rousr_dissonance_set_details("Playing Tutorial Challenge (lol noob)")
global.challenges = 1
loadhud()
audio_stop_sound(m_funmodemusic)
global.currentchallenge = 9
if global.music = 1 {
audio_play_sound(m_heaven,0,1)
audio_sound_gain(m_heaven,global.musicvolume,1)
}