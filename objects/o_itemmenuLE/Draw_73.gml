draw_set_alpha(0.5)
var camx = camera_get_view_x(view_camera[0])
var camy = camera_get_view_y(view_camera[0])


draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false)
draw_set_font(fnt_gamemode)
draw_set_alpha(1)
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_text(512+camx,100+camy,"Item Menu")
draw_set_font(fnt_death)


for(var i = 0;i<8;i++) {
for(var r = 0;r<10;r++) {
item = i * (r*9)

switch(item) {
default: showitem = s_playerred
case(1): showitem = s_redblock
case(2): showitem = s_yellowblock
case(3): showitem = s_greenblock
case(4): showitem = s_blueblock
case(5): showitem = s_whiteblock
case(17): showitem = s_shootersleft
}
	
draw_sprite(showitem,0,96+(i*64),256+(r*32))
}}

draw_set_color(c_white)
draw_text(512+camx,740+camy,"You can press ENTER/ESC to leave!")
draw_set_halign(fa_left)