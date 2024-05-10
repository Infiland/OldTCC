/// @description Variables

ingame = false
image_speed = 0;
depth = -10000000000
if room = r_leveleditor {
alarm[0] = 1	
}
if instance_exists(o_pausescreen) {
vx = 0
vy = 0
if instance_exists(o_smoothcamera) {
vx = camera_get_view_x(view_camera[0])
vy = camera_get_view_y(view_camera[0])
}

oldx = 480 + vx
oldy = 490 + vy
sprite_index = s_returntomainmenu	
}