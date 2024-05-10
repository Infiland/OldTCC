scr_custombutton()
draw_set_halign(fa_left)
draw_set_color(c_white)
if room = r_endlessrunmenu {
if global.newendlesslevelhighscore > 0 {
draw_set_font(fnt_death)
draw_text(x,y+122,"Highscore: "+string(global.newendlesslevelhighscore))
}}