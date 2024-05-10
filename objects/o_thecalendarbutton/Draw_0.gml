scr_custombutton()
draw_set_font(fnt_death)
if locked = 1 {
if timeleft > 0 {
draw_text(x,y+120,"Days Left: " + string_format(366 - (((global.calendarcurrentmonth - 1) * 30.41666666666667) + global.calendarcurrentday),0,0))
} else { 
	if global.calendar2022unlock = 0 {
	draw_text(x,y+125,"1000                 Required")
	draw_sprite_ext(s_creditscurrency,0,x+60,y+122,2,2,0,c_white,1)
	}
	}
}