if instance_exists(o_settingspausemenu) { exit }

image_alpha = 1
if instance_exists(o_player) {
if o_player.x < camera_get_view_x(view_camera[0])+64 + string_width(string(global.special)) {
if o_player.y > camera_get_view_y(view_camera[0])+640 {
image_alpha = 0.2
}}}
draw_set_alpha(image_alpha)

depth = -10000
if room != r_tale {
shake = 0
draw_set_color(c_white)

if global.special >= reqcoin {
if key_skip {
draw_set_color(c_white)
draw_rectangle(100,688,100+(timer*100),693,false)	
}}

if !instance_exists(o_specialcoin) {
if global.pause = 0{	
	shake = 1.5
draw_set_color(c_yellow)
}}

draw_set_font(fnt_death)
draw_sprite_ext(s_coinhud,0,16+random_range(shake,-shake),653+random_range(shake,-shake),0.38,0.38,0,c_white,1)	
draw_text(64+random_range(-shake,shake),661+random_range(-shake,shake),string_hash_to_newline(string(global.special)))
if global.special >= reqcoin {
draw_set_font(fnt_skip)
color = c_white
if skip = "You can't skip\nthis level" { color = c_red}
draw_text_outline(100,658,skip,color,c_black)
}
draw_set_color(c_white)
}

draw_set_alpha(1)