draw_self()
draw_set_halign(fa_center)
draw_set_font(fnt_cool2)
draw_set_color(c_white)
if instance_place(x,y,o_player) {
if used = false {
if crash != 6969 {
draw_text(390,375,"Press [" + string(global.controlsinteract) + "] to convert coins into credits.")
} else { draw_text(390,375,"I WILL CRASH THE GAME MUAHAHAH, I mean what?") }
} else {
draw_text(390,375,"Thanks for depositing your coins!")		
}}