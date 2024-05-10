draw_healthbar(224,672,768,704,timer*6.66,c_black,c_black,c_white,0,true,false)
draw_set_alpha((timer*6.66)/100)
draw_text(loadingtextxposition,645,"Loading...")
draw_set_alpha(1)
//Formula: 100 podeljeno sa timer 100/15