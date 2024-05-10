/// @description Click to start
if global.hardmodeunlock > 1 {
if room = r_hardmodediff {
window_set_cursor(cr_default)
room_goto(r_lvl1)
loadhud()
global.hardmode = 1
global.hardmodelives = 50;
global.hardmodedifficulty = 2
audio_stop_sound(m_mainmenu);
}}