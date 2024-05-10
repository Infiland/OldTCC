//draw_text(x,y,global.workshopfolder)
//draw_text(x,y-10,realwalk)


if jumptestdebug = true {
draw_text(x+30,y,jumptest);
draw_text(x+30,y+20,jumptest2);
}
draw_set_alpha(1)
//Breathing
draw_set_color(c_white)
if breath > 375 { 
if breath < 500 { draw_sprite(s_breathinghud,0,x,y-35) }
}
if breath > 250 { 
if breath < 376 { draw_sprite(s_breathinghud,1,x,y-35) }
}
if breath > 125 { 
if breath < 251 { draw_sprite(s_breathinghud,2,x,y-35) }
}
if breath > 40 { 
if breath < 126 { draw_sprite(s_breathinghud,3,x,y-35) }
}
if breath < 41 { draw_sprite(s_breathinghud,4,x-random_range(-3,3),y-random_range(32,38)) }

//Skins
switch(global.skinselected) {
default:
draw_self()
break;
case(17):
draw_self()
draw_sprite(s_hazardousplayerskin,image_index,x,y)
break;
case(21):
draw_sprite_ext(s_animatedskinbase,0,x,y+31,1,1*basesize,0,image_blend,1)
draw_sprite_ext(s_animatedskineyes,blinkinganimatioon,x+eyesX,(y+31)+eyesY,1,1*basesize,0,image_blend,1)
break;
case(22):
draw_self()
if vsp > -0.1 and vsp < 0.1 { draw_sprite(s_underwatermask,0,x,y) }
if vsp < -0.1  { draw_sprite(s_underwatermask,1,x,y) }
if vsp > 0.1 { draw_sprite(s_underwatermask,2,x,y) }
break;
case(23):
if global.easy = 1 || global.infinitelivessettings = 1 {
draw_sprite(s_forsenCDglasses,image_index,x,y)
} else { draw_self() }
break;
case(24):
draw_sprite_ext(s_redballplayerskin,image_index,x + xchange ,y + ychange,1,1,rotation,image_blend,1)
break;
case(25):
draw_self()
lightbomberframe += 0.1 * (60 / global.maxfps)
if lightbomberframe > 4 { lightbomberframe = 0 }
if hsp = 0 {
	draw_sprite(s_bomberoutfit,0,x,y) 
	draw_sprite(s_bomberlight,lightbomberframe,x+10,y+23)
	}
if hsp < 0  { 
	draw_sprite(s_bomberoutfit,1,x,y)
	draw_sprite(s_bomberlight,lightbomberframe,x+5,y+21)
	}
if hsp > 0 { 
	draw_sprite(s_bomberoutfit,2,x,y)
	draw_sprite(s_bomberlight,lightbomberframe,x+17,y+23)
	}
break;
case(28):
draw_self()
draw_sprite(s_monocleglassesoutfit,image_index,x,y)
break;
case(30):
draw_sprite_ext(s_animatedskinbase,0,x,y+31,1,1,0,image_blend,1)
draw_sprite_ext(s_googlyeye,0,x+9+eyesX,y+16+eyesY,1,1*basesize,googlyeyesrotreal + randomeeyerotationR,c_white,1)
draw_sprite_ext(s_googlyeye,0,x+22+eyesX,y+16+eyesY,1,1*basesize,googlyeyesrotreal + randomeeyerotationL ,c_white,1)
break;
case(32):
spiraleyerot += (4 * (60 / global.maxfps)) * (walksp / 4)
if spiraleyerot > 7200 { spiraleyerot = 0 }
draw_sprite_ext(s_animatedskinbase,0,x,y+31,1,1,0,image_blend,1)
draw_sprite_ext(s_spiraleye,0,x+9+eyesX,y+16+eyesY,1,1,spiraleyerot,image_blend,1)
draw_sprite_ext(s_spiraleye,0,x+22+eyesX,y+16+eyesY,1,1,180+spiraleyerot,image_blend,1)
break;
case(33):
heartbump -= (1 * (60 / global.maxfps))
if distance_to_object(o_door) < heartbump { heartbump = distance_to_object(o_door) / 1.5 }
if heartbump < 0 { 
	hearteyeincrease = 1.3
	if instance_exists(o_door) {
heartbump = distance_to_object(o_door) / 1.5
} else { heartbump = 120 }
	}
hearteyeincrease = lerp(hearteyeincrease,1,0.1 *(60 / global.maxfps))
draw_sprite_ext(s_animatedskinbase,0,x,y+31,1,1,0,image_blend,1)
draw_sprite_ext(s_hearteye,0,x+9+eyesX,y+16+eyesY,1 * hearteyeincrease,1 * hearteyeincrease,0,image_blend,1)
draw_sprite_ext(s_hearteye,0,x+22+eyesX,y+16+eyesY,1 * hearteyeincrease,1 * hearteyeincrease,0,image_blend,1)
break;
case(34):
draw_circle_color(x+15,y+15,15.5,image_blend,image_blend/2,false)
draw_sprite_ext(s_clockborder,0,x,y,1,1,0,image_blend,1)
draw_sprite_ext(s_clockminute,0,x+16,y+16,1,1,-current_minute * 6,c_white,1)
draw_sprite_ext(s_clocksecond,0,x+16,y+16,1,1,-current_second * 6,c_white,1)
break;
case(35):
//Invisible Skin
break;
case(39):
draw_self()
draw_sprite(s_pirateeyepatch,image_index,x,y)
break;
case(40):
draw_sprite_ext(s_scifiskinbase,0,x,y,1,1,0,image_blend,1)
draw_sprite_ext(s_scifiskineyes,1,x+4+eyesX,y+14+eyesY,1,1,0,image_blend,1)
draw_sprite_ext(s_scifiskineyes,0,x+4+eyesX,y+14+eyesY,1,1,0,c_white,1)
break;
case(41):
draw_self()
if hsp = 0 { draw_sprite(s_hevsuitoutfit,0,x,y) }
if hsp < 0 { draw_sprite(s_hevsuitoutfit,1,x,y) }
if hsp > 0 { draw_sprite(s_hevsuitoutfit,2,x,y) }
break;
case(42):
draw_self()
if hsp = 0 { draw_sprite(s_fancyoutfit,0,x,y) }
if hsp < 0 { draw_sprite(s_fancyoutfit,1,x,y) }
if hsp > 0 { draw_sprite(s_fancyoutfit,2,x,y) }
break;
}


//Hats
switch(global.hatselected) {
case(1): draw_sprite(s_graduationhat,0,x+15,y+6) break;
case(2): draw_sprite(s_conehat,0,x+16,y+6) break;
case(3):
draw_sprite(s_partyhat,0,x+16,y+6)
break;
case(4):
draw_sprite(s_paperhat,0,x+16,y+6)
break;
case(5):
draw_sprite(s_tophat,0,x+16,y+8)
break;
case(6):
draw_sprite(s_yellowtophat,0,x+16,y+8)
break;
case(7):
switch(global.color) {
case(0): color = c_red break;
case(1): color = c_yellow break;
case(2): color = c_lime break;
case(3): color = c_aqua break;
case(4): color = c_white break;
}
draw_sprite_ext(s_reddiehat,0,x+16,y+6,1,1,0,color,1)
break;
case(8):
draw_sprite(s_santahat,0,x+16,y+8) break;
case(9):
draw_sprite(s_witchhat,0,x+16,y+8) break;
case(10):
draw_sprite(s_pumpkinhat,0,x+16,y+8) break;
case(11):
draw_sprite(s_brownhat,0,x+16,y+8) break;
case(12):
draw_sprite(s_grayhat,0,x+16,y+8) break;
case(13):
draw_sprite(s_whitehat,0,x+16,y+8) break;
case(14):
draw_sprite(s_sunhat,0,x+16,y+8) break;
case(15):
draw_sprite(s_redblockhat,0,x+16,y+8) break;
case(16):
draw_sprite(s_yellowblockhat,0,x+16,y+8) break;
case(17):
draw_sprite(s_greenblockhat,0,x+16,y+8) break;
case(18):
draw_sprite(s_blueblockhat,0,x+16,y+8) break;
case(19):
draw_sprite(s_whiteblockhat,0,x+16,y+8) break;
case(20):
draw_sprite(s_spikehat,0,x+16,y+8) break;
case(21):
var spikehatalpha = random_range(0.5,1)
draw_sprite_ext(s_spikehat,0,x+16,y+8,1,1,0,c_white,spikehatalpha) break;
case(22):
draw_sprite_ext(s_spikehat,0,x+16,y+8,1,1,0,c_lime,1) break;
case(23):
draw_sprite_ext(s_spikehat,0,x+16,y+8,1,1,0,c_yellow,1) break;
case(24):
draw_sprite(s_hexagonhat,0,x+16,y+8) break;
case(25):
draw_sprite(s_breadhat,0,x+16,y+8) break;
case(26):
draw_sprite_ext(s_soldierhat,0,x+16,y+8,1.2,1,0,c_white,1) break;
case(27):
draw_sprite(s_samuraihat,0,x+16,y+8) break;
case(28): draw_sprite(s_redbeaniehat,0,x+16,y+8) break;
case(29): draw_sprite(s_yellowbeaniehat,0,x+16,y+8) break;
case(30): draw_sprite(s_greenbeaniehat,0,x+16,y+8) break;
case(31): draw_sprite(s_bluebeaniehat,0,x+16,y+8) break;
case(32): draw_sprite(s_whitebeaniehat,0,x+16,y+8) break;
case(33): draw_sprite(s_piratehat,0,x+16,y+8) break;
case(34): draw_sprite(s_pinkbowtiehat,0,x+16,y+8) break;
case(35): draw_sprite(s_kingshat,0,x+16,y+8) break;
case(36): draw_sprite(s_hairhat,0,x+16,y+8) break;
case(37): draw_sprite(s_comradehat,0,x+16,y+6) break;
case(38): draw_sprite(s_vikinghat,0,x+16,y+8) break;
case(39): draw_sprite(s_cowboyhat,0,x+16,y+8) break;
case(40): draw_sprite(s_redsushat,0,x+16,y+8) break;
case(41): draw_sprite(s_yellowsushat,0,x+16,y+8) break;
case(42): draw_sprite(s_greensushat,0,x+16,y+8) break;
case(43): draw_sprite(s_bluesushat,0,x+16,y+8) break;
case(44): draw_sprite(s_whitesushat,0,x+16,y+8) break;
}

//Items
scr_items()