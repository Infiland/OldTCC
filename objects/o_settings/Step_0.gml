if rotate = 0 {
if image_angle > 0 {	
	image_angle -= (10 * global.delta) * (60 / global.maxfps)
	if image_angle < 0 {
	image_angle = 0	
	}
	}}
else 
{image_angle += (1 * global.delta) * (60 / global.maxfps)}

if room != r_mainmenu {
if keyboard_check_pressed(vk_escape) || gamepad_button_check_pressed(4,gp_start) {
instance_destroy()
}}