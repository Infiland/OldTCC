rousr_dissonance_set_details("In Challenges Menu")
rousr_dissonance_set_timestamps(undefined,undefined)
if !audio_is_playing(m_funmodemusic) {
audio_play_sound(m_funmodemusic,0,1)
audio_sound_gain(m_funmodemusic,0,0)
audio_sound_gain(m_mainmenu,0,1000)
}
audio_sound_gain(m_funmodemusic,global.musicvolume,1000)
global.currentchallenge = 0
global.diamondmedalcount = 0
global.perfectscorecount = 0
scr_savechallengetime()