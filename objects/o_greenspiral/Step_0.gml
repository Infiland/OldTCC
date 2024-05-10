scr_playercontrolsconfig()
if interactcontrols = 0 {
key_interact = keyboard_check_pressed(ord(global.controlsinteract)) || (gamepad_button_check_pressed(4,gp_shoulderr))
} else { key_interact = keyboard_check_pressed(global.controlsinteract) }

if place_meeting(x,y,o_player) {
if key_interact {
global.color = 2
rousr_dissonance_set_small_image("green","Currently Green Color")
if room != r_leveleditor { 
	global.totalusepickups += 1
	}
instance_destroy()
if global.sound = 1 {
audio_play_sound(snd_pickup,5,0);
}
if global.itempar = 1 { instance_create(x+8,y+8,o_greenpickup) } }
}
if global.pause = 0 { image_speed = 1 }
if global.pause = 1 { image_speed = 0 }

if room = r_leveleditor {
if global.LES = 6 or 7 or 8 or 9 or 10 or 29 or 30 or 31 or 32 or 33 {
if place_meeting(x,y,o_redblock) or place_meeting(x,y,o_yellowblock) or place_meeting(x,y,o_greenblock) or place_meeting(x,y,o_blueblock) or place_meeting(x,y,o_whiteblock) or place_meeting(x,y,o_redpassblock) or place_meeting(x,y,o_yellowpassblock) or place_meeting(x,y,o_greenpassblock) or place_meeting(x,y,o_bluepassblock) {
instance_destroy()	
}}}