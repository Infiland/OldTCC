if !instance_exists(o_quitask) {
audio_sound_pitch(m_mainmenu,1)
window_set_cursor(cr_default)
global.choosesettings = 0
if room = r_mainmenu {
room_goto(r_settings);
rousr_dissonance_set_details("Lookin' at settings")
} else {
instance_create(x,y,o_settingspausemenu)
}}