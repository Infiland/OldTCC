function CERbutton(txt1,txt2,lvl){
draw_set_halign(fa_left)
draw_set_font(fnt_death)
if txt1 != "" {
draw_text(x+5,y+2,string(txt1))
}
if txt2 != "" {
draw_text(x+5,y+22,string(txt2))
}
image_index = lvl
}