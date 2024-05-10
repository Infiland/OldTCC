//Command
if instance_exists(o_leveleditorleaveask) { exit }
if instance_exists(o_namelevelLE) { exit}
image_alpha = 1
if global.LEMode = 1 {
if global.writingmode = 0 {
if mouse_wheel_down() || keyboard_check_pressed(vk_left) {
global.LES -= 1	
image_speed = 1 * (60 / global.maxfps)
}
if mouse_wheel_up() || keyboard_check_pressed(vk_right) {
global.LES += 1	
image_speed = 1 * (60 / global.maxfps)
}}}
if keyboard_check_pressed(vk_escape) {
if !instance_exists(o_leveleditorleaveask) {
instance_create(x,y,o_leveleditorleaveask)
}
}
//Look
image_blend = c_white
scr_leveleditorsprites()

if global.LEMode = 1 {
if global.LEBuild = 1 {
if global.writingmode = 0 {
if keyboard_check_pressed(vk_numpad1) || keyboard_check_pressed(ord("1")) { global.LES = 0 }
if keyboard_check_pressed(vk_numpad2) || keyboard_check_pressed(ord("2")) { global.LES = 43 }
if keyboard_check_pressed(vk_numpad3) || keyboard_check_pressed(ord("3")) { global.LES = 86 }
}}
if global.LES > 86 {global.LES = 86}
}
//Background
if global.LEBuild = 2 {
if global.writingmode = 0 {
if keyboard_check_pressed(vk_numpad1) || keyboard_check_pressed(ord("1")) { global.LES = 0 }
if keyboard_check_pressed(vk_numpad2) || keyboard_check_pressed(ord("2")) { global.LES = 7 }
if keyboard_check_pressed(vk_numpad3) || keyboard_check_pressed(ord("3")) { global.LES = 15 }
}
image_alpha = 1
image_index = 0
if global.LES > 15 {
global.LES = 15
}
}
if global.LEBuild = 3 {
if global.LES > 1 {
global.LES = 1
}
}
if global.LES < 0 {
global.LES = 0	
}