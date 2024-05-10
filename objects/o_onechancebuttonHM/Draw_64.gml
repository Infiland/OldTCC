scr_custombutton()
draw_set_font(fnt_death)
if global.hardmodeunlock > 4 {
if image_index = 1 { draw_text(32,672,"You start with only one life, getting 1UPs is more rare. You will regret this.") }
}