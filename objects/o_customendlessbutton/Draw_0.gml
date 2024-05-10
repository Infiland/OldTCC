if global.customERunlock = 1 {
scr_custombutton()
} else {
draw_sprite_ext(s_lockedbutton,0,x,y,2.36,2.36,0,c_white,1)
draw_set_font(fnt_death)
draw_set_halign(fa_center)
draw_set_color(c_white)
draw_text(x+118,y+122,"500              Required")
draw_sprite_ext(s_creditscurrency,0,x+60,y+122,2,2,0,c_white,1)
}
draw_set_halign(fa_left)