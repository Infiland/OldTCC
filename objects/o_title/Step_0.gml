if current_day = 31 {
if current_month = 10 {
if pitch > 0.2 {
pitch -= 0.001
}}}
audio_sound_pitch(m_mainmenu,pitch)
audio_sound_gain(m_mainmenu,global.musicvolume,1)
if global.music = 1 {
if !audio_is_playing(m_mainmenu) {
audio_play_sound(m_mainmenu,0,1);
}}