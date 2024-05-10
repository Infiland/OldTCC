if room = r_funmodemenu {
global.customizeselectMU = 1
room_goto(r_localmultiplayermenu);
rousr_dissonance_set_details("Preparing for Local Multiplayer")
audio_sound_gain(m_funmodemusic,0,1000)
if !audio_is_playing(m_justonline) {
audio_play_sound(m_justonline,0,1)
}
audio_sound_gain(m_justonline,global.musicvolume,1000)
}