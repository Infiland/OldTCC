/// @description Click to start
if !instance_exists(o_progressask) {
if global.hardmodeunlock > 0 {
window_set_cursor(cr_default)
if room = r_gamemode {
room_goto(r_hardmodediff)
global.hardmode = 1
global.challenges = 0
}}}