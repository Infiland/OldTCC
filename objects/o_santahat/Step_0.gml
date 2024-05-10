if instance_exists(o_player) {
x = o_player.x + 9
y = o_player.y
key_left = keyboard_check(vk_left) || (gamepad_button_check(4,gp_padl)) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || (gamepad_button_check(4,gp_padr)) || keyboard_check(ord("D"));

if key_left or key_right {
if change = 1 {
image_yscale -= 0.005
if image_yscale < 0.9 {
change = 0	
}}
if change = 0 {
image_yscale += 0.001
if image_yscale > 1 {
change = 1
}}
}
}
if !instance_exists(o_player) {
if global.pause = 1{ exit }
fall += 0.25 * (60 / global.maxfps)
randomize()
image_alpha -= 0.035 * (60 / global.maxfps)
image_angle += rotate * (60 / global.maxfps)
y -= (5 - fall) * (60 / global.maxfps)
if image_alpha < 0 { instance_destroy() }
x = x + gotheredead
if room = r_leveleditor {
instance_destroy()	
}
}