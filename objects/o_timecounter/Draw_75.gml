if instance_exists(o_settingspausemenu) { exit }

image_alpha = 1
if instance_exists(o_player) {
if o_player.x < camera_get_view_x(view_camera[0])+64 + string_width(string(string_format(global.time,1,2 - global.decimalsettings))) {
if o_player.y > camera_get_view_y(view_camera[0])+672 {
image_alpha = 0.2
}}}
draw_set_alpha(image_alpha)

depth = -10000
if global.pause = 1 { image_speed = 0 }
if global.pause = 0 { image_speed = 0.4 * (60 / global.maxfps) }
if room != r_tale {
draw_set_font(fnt_death)
draw_set_color(c_white)
if global.hardmodedifficulty <= 5 {
draw_sprite_ext(s_time,image_index,18,690,0.33,0.33,0,c_white,1)
draw_text(room_width-room_width+64,696,string_hash_to_newline(string_format(global.time,1,2 - global.decimalsettings)))
} else {
dynamictimeindex = lerp(dynamictimeindex,global.timeleftHM - global.time,0.05 * (60 / global.maxfps))
draw_sprite_ext(s_time,dynamictimeindex,18,690,0.33,0.33,0,c_white,1)
draw_text(room_width-room_width+64,696,string(string_format(global.timeleftHM - global.time,1,2-global.decimalsettings))) 
if global.time > global.timeleftHM { game_restart() }
}
}

draw_set_alpha(1)