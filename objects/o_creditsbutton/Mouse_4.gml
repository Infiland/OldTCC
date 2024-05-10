/// @description Click to start
if !instance_exists(o_progressask) {
if room = r_gamemode or r_support {
window_set_cursor(cr_default)
room_goto(r_credits)
sprite_prefetch(s_creditsbackround)
sprite_prefetch(s_creditsbackround2)
instance_destroy(o_star)
scr_loadhardmode()
}}
if room = r_theend {
if global.hardmodeunlock = 0 { 
	global.hardmodeunlock = 1 
	scr_savehardmode()
}}