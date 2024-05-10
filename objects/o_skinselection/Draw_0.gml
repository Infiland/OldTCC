switch(global.skinselected) {
default:
draw_self()
break;
case(23):
draw_self()
if global.easy = 1 || global.infinitelivessettings = 1 {
draw_sprite_ext(s_forsenCDglasses,0,x,y,5,5,0,c_white,1)
}
break;
case(34):
draw_sprite_ext(s_animatedskinbase,0,x,y+(31*image_xscale),5,5,0,image_blend,1)
draw_sprite_ext(s_clockminute,0,x+(16*image_xscale),y+(16*image_xscale),5,5,-current_minute * 6,c_white,1)
draw_sprite_ext(s_clocksecond,0,x+(16*image_xscale),y+(16*image_xscale),5,5,-current_second * 6,c_white,1)
break;
case(35):

break;
}