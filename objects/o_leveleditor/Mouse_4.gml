if !instance_exists(o_progressask) {
window_set_cursor(cr_default)
audio_play_sound(m_leveleditor,0,1)
global.LEBuild = 1
global.levelname = ""
global.previoustext = ""
global.leveleditorstring = ""
global.naminglevel = false
global.LEVerified = 0
global.defaultcolorLE = 0
global.LEMode = 1
global.color = 0
global.LEBackground = 0
global.LEStarRotation = 0
global.LEbuttonpage = 1
audio_stop_sound(m_mainmenu);
room_goto(r_leveleditor);
rousr_dissonance_set_timestamps(0,undefined)
rousr_dissonance_set_details("Making a Level")
}