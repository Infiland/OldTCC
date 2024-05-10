var camx = camera_get_view_x(view_camera[0])
var camy = camera_get_view_y(view_camera[0])
draw_sprite_ext(s_tutorialLE,image_index,x,y,image_xscale,image_yscale,0,c_white,1)
x = 128 + camx
y = 192 + camy