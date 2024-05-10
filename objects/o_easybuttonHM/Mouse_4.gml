/// @description Click to start
if room = r_hardmodediff {
window_set_cursor(cr_default)
room_goto(r_lvl1)
loadhud()
global.hardmode = 1
global.hardmodelives = 75;
global.hardmodedifficulty = 1
audio_stop_sound(m_mainmenu);
}