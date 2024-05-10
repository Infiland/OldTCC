draw_set_alpha(1)
draw_set_font(fnt_cool2)
if global.writingmode = 1 {
draw_set_color(c_yellow)
draw_text_ext(10,64,text,1,1000)
draw_set_color(c_white)
draw_text(10,84,"Writing Mode: Press ENTER when you are done.")
}
if global.writingmode = 0 {
draw_set_color(c_white)
draw_text_ext(10,64,global.leveleditorstring,1,1000)
}