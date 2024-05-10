var camx = camera_get_view_x(view_camera[0])
var camy = camera_get_view_y(view_camera[0])
if global.LEMode = 2 {
	draw_set_alpha(0)
	}
x = 935 + camx
y = 11 + camy
draw_sprite(sprite_index,0,x,y)