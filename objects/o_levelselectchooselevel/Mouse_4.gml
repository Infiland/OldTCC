/// @description Click to start
if global.challenges = 1749610 {
if !instance_exists(o_demoask) {instance_create(x,y,o_demoask)}
exit;
}

if locked = 0 {
window_set_cursor(cr_default)
global.levelselect = 1
room_goto(roomselect)
if roomselect != r_lvl1 {
loadhud()
}
if !audio_is_playing(levelmusic) {
audio_play_sound(levelmusic,0,1)	
}
}