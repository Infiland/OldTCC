draw_set_alpha(0.5)
draw_rectangle_color(0,0,1024,768,c_black,c_black,c_black,c_black,false)
draw_set_font(fnt_gamemode)
draw_set_alpha(1)
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_text(room_width/2,100,"Change Diamond Time?")
draw_text(room_width/2,300,"Press enter when you are done.\nHold Left/Right Arrow Keys to change")
draw_set_font(fnt_death)
if global.LESavedWinTime != 0 {
draw_text(room_width/2,500,"Your Level Time: " + string(global.LESavedWinTime) + "\n(If you want this reset, just return to playmode again)")
if !instance_exists(o_settimertodiamondtimeLE) {
var button = instance_create(398,570,o_settimertodiamondtimeLE) 
with button {
image_xscale = 45.8
image_yscale = 13.8
}}
} else {
draw_text(room_width/2,500,"Beat the level legitimately to know your level time\n(Which might help you with your diamond medal time)")
}
draw_text(room_width/2,650,"Hold Shift to be more precise")
draw_set_halign(fa_left)
draw_sprite_ext(s_medals,3,240,220,0.07,0.07,0,c_white,1)
draw_set_color(c_yellow)
draw_text(265,215,string(global.LEDiamondMedalTime) + "s")
var bmd,smd,gmd
gmd = global.LEDiamondMedalTime * 1.1
smd = gmd * 1.2
bmd = smd * 1.3
draw_set_color(c_white)
draw_sprite_ext(s_medals,2,390,220,0.07,0.07,0,c_white,1)
draw_text(415,215,string(gmd) + "s")
draw_sprite_ext(s_medals,1,540,220,0.07,0.07,0,c_white,1)
draw_text(565,215,string(smd) + "s")
draw_sprite_ext(s_medals,0,690,220,0.07,0.07,0,c_white,1)
draw_text(715,215,string(bmd) + "s")