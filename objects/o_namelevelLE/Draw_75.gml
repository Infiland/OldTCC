draw_set_alpha(0.5)
draw_rectangle_color(0,0,1024,768,c_black,c_black,c_black,c_black,false)
draw_set_font(fnt_gamemode)
draw_set_alpha(1)
draw_set_halign(fa_center)
draw_text(room_width/2,100,"Name your level!")
var directory = working_directory + "/LevelEditor Files/" + "/" + text + "/"
if !directory_exists(directory) {
draw_set_color(c_lime)
} else { draw_set_color(c_yellow) }
draw_text(room_width/2,200,text)
if directory_exists(directory) {
draw_set_color(c_white)
draw_set_font(fnt_death)
if text != "" {
draw_text(room_width/2,270,"WARNING: This name already exists, saving your level will overwrite the existing level.") }}
draw_set_color(c_white)
draw_set_font(fnt_gamemode)
draw_text(room_width/2,300,"Press enter when you are done.\nPress ESC to cancel.")
draw_set_halign(fa_left)