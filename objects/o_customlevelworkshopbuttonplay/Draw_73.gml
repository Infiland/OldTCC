y = lerp(y,ystart - global.customlevelsscroll,0.1 * (60 / global.maxfps))

if mouse_wheel_down() {
global.customlevelsscroll -= 15
}
if mouse_wheel_up() {
global.customlevelsscroll += 15
}

if global.customlevelsscroll < 0 {
global.customlevelsscroll = 0	
}
if global.customlevelsscroll > global.customlevelsscrollmax {
global.customlevelsscroll = global.customlevelsscrollmax	
}

draw_self()
draw_set_font(fnt_death)
draw_text(x+5,y+2,string(mTitle))
//draw_text(x+5,y+22,"By: " + string(ownername))
draw_text(x+5,y+42,"Likes: " + string(mLikes))
draw_text(x+5,y+62,"Disikes: " + string(mDislikes))