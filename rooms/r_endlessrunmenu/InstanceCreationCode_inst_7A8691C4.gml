rousr_dissonance_set_details("In Endless Run Menu")
global.time = 0
if !audio_is_playing(m_funmodemusic) {
audio_stop_all()
audio_play_sound(m_funmodemusic,0,1)
audio_sound_gain(m_funmodemusic,0,0)
audio_sound_gain(m_mainmenu,0,1000)
}
audio_sound_gain(m_funmodemusic,global.musicvolume,1000)