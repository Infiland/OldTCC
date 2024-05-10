draw_set_alpha(0.5)
draw_rectangle_color(0,0,1024,768,c_black,c_black,c_black,c_black,false)
draw_set_font(fnt_gamemode)
draw_set_alpha(1)
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_text(room_width/2,100,"What star direction angle do you want?")
draw_text(room_width/2,200,string_format(global.LEStarRotation,0,0))
draw_set_font(fnt_death)
if global.LEStarRotation < 10 {
draw_text((room_width/2)+15,195,"o")
}
if global.LEStarRotation < 100 {
if global.LEStarRotation > 9 {
draw_text((room_width/2)+40,195,"o")
}}
if global.LEStarRotation > 99 {
draw_text((room_width/2)+65,195,"o")
}
draw_set_font(fnt_gamemode)
draw_text(room_width/2,300,"Press enter when you are done.\nHold Left/Right Arrow Keys to change!")
draw_set_halign(fa_left)