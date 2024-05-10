draw_set_halign(fa_left)

//Ammo
if hasgun = true {
draw_set_font(fnt_cool2)
if ammo < 10 { draw_set_color(c_yellow) } else {
draw_set_color(c_white) }
if ammo = 0 { draw_set_color(c_red) }
draw_text(330,20 + (25 * (multiplayerplayer - 1)),"Ammo: "+ string(ammo))
}
draw_set_color(c_white)

//Skins
switch(multiplayerplayerskin) {
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
case(24):
draw_sprite_ext(s_redballplayerskin,image_index,x,y,1,1,rotation,image_blend,1)
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
draw_sprite_ext(s_animatedskinbase,0,x,y+31,1,1*basesize,0,image_blend,1)
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
case(35): break;
}

//Hats
switch(multiplayerplayerhat) {
case(1):
draw_sprite(s_graduationhat,0,x+15,y+6)
break;
case(2):
draw_sprite(s_conehat,0,x+16,y+6)
break;
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
switch(color) {
case(0): colorH = c_red break;
case(1): colorH = c_yellow break;
case(2): colorH = c_lime break;
case(3): colorH = c_aqua break;
case(4): colorH = c_white break;
}
draw_sprite_ext(s_reddiehat,0,x+16,y+6,1,1,0,colorH,1)
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
}


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

//Gun
if hasgun = true {
//Right
if timer < 30 {
if playermove = 1 {
	gunrotation = 0
	xcord = lerp(xcord,-2,0.2)
	ycord = lerp(ycord,10,0.2)
	timer = 0
	}
//Left
if playermove = -1 {
	gunrotation = 60
	xcord = lerp(xcord,-5,0.2)
	ycord = lerp(ycord,10,0.2)
	timer = 0
	}
}
timer += 1
gunframe = lerp(gunframe,gunrotation,0.1)
gunangle = lerp(gunangle,0,0.3)
if timer > 30 {
gunrotation = 30
xcord = lerp(xcord,9,0.2)
	ycord = lerp(ycord,5,0.2)
}
if key_interact {
if inwater = 1 {
if ammo > 0 {
timer = 0
if playermove = -1 {
if global.playerpar = 1 { instance_create(x+20,y-10,o_ammoparticle) }
	gunangle = -40
}
if playermove = 1 {
if global.playerpar = 1 { instance_create(x,y-10,o_ammoparticle) }
	gunangle = 40
}}}}
draw_sprite_ext(s_gunequipped,gunframe,x + xcord + 9 - xchange,y + ycord + 23 - ychange,1,1,gunangle,c_white,1)
}

if multiplayerplayerhat = 0 {
draw_sprite(s_MUplayerhudarrow,multiplayerplayer-1,x+8 - xchange,y-15 - ychange)
} else {
draw_sprite(s_MUplayerhudarrow,multiplayerplayer-1,x+8 - xchange,y-25 - ychange)	
}