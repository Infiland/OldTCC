//Get Player Input
if global.pause = 1{ 
	scr_playercontrolsconfig()
	exit }
//Left
if leftcontrols = 0 {
key_left = (gamepad_button_check(4,gp_padl)) || keyboard_check(ord(global.controlsmoveleft));
}
if leftcontrols = 1 {
key_left = (gamepad_button_check(4,gp_padl)) || keyboard_check(global.controlsmoveleft);
}
//Right
if rightcontrols = 0 {
key_right = (gamepad_button_check(4,gp_padr)) || keyboard_check(ord(global.controlsmoveright));
}
if rightcontrols = 1 {
key_right = (gamepad_button_check(4,gp_padr)) || keyboard_check(global.controlsmoveright);
}
//Jump
if doublejump = 0 {
if jumpcontrols = 0 { key_jump = (gamepad_button_check(4,gp_face1)) || keyboard_check(ord(global.controlsjump)) }
else { key_jump = keyboard_check(global.controlsjump) }
} else {
if jumpcontrols = 0 { key_jump = (gamepad_button_check_pressed(4,gp_face1)) || keyboard_check_pressed(ord(global.controlsjump)) }
else { key_jump = keyboard_check_pressed(global.controlsjump) }
}

//Interact
if interactcontrols = 0 {
key_interact = keyboard_check_pressed(ord(global.controlsinteract)) || (gamepad_button_check_pressed(4,gp_shoulderr)) //|| keyboard_check_pressed(ord("S"));
} else { key_interact = keyboard_check_pressed(global.controlsinteract) }
//Restart
if restartcontrols = 0 { key_restart = keyboard_check(ord(global.controlsrestart)) } else { key_restart = keyboard_check(global.controlsrestart) }

if global.noclip = 1 {
if keyboard_check(vk_right) || keyboard_check(ord("D")) { x += walksp * (60 / global.maxfps) }
if keyboard_check(vk_left) || keyboard_check(ord("A")) { x -= walksp * (60 / global.maxfps) }
if keyboard_check(vk_up) || keyboard_check(ord("W")) { y -= walksp * (60 / global.maxfps) }
if keyboard_check(vk_down) || keyboard_check(ord("S")) { y += walksp * (60 / global.maxfps) }
}

if instance_exists(o_hatshopmenu) { exit }
if key_restart {
if global.pause = 0 {
if room != r_theend || room != r_easteregg1 {
if room != r_leveleditor {global.totalrestartdeaths += 1}
death()
}}}

//Water
if place_meeting(x,y,o_water) { inwater = 2 } else { inwater = 1 }
if inwater = 2 { 
	breath -= 1 * (60 / global.maxfps)
	if breath < 0 {
		global.totalwaterdeaths += 1
		death() }
	} else { breath += 3 * (60 / global.maxfps)
	if breath > 500 { breath = 500 }
		}
//Sound Manipultation
if passblockcooldown > -1 { passblockcooldown -= 1 }
if grv = 0.83 * (60 / global.maxfps) {audio_sound_pitch(snd_jump,1.25)	}
if grv = 0.5 * (60 / global.maxfps) {audio_sound_pitch(snd_jump,1)	}
if grv = 0.172 * (60 / global.maxfps) {audio_sound_pitch(snd_jump,0.8)	}
if grv = 0.027 * (60 / global.maxfps) {audio_sound_pitch(snd_jump,0.7)	}

//Calculate Movement
var move = key_right - key_left;
if key_right or key_left {
if onice = true {
if global.color < 3 {realwalk = lerp(realwalk,walksp,0.02 * (60 / global.maxfps))}
if global.color = 3 {realwalk = lerp(realwalk,walksp,0.03 * (60 / global.maxfps))}
if global.color = 4 {realwalk = lerp(realwalk,walksp,0.015 * (60 / global.maxfps))}
}
if onice = false {
realwalk = lerp(realwalk,walksp,1)
}}
if !key_right and !key_left {
realwalk = lerp(realwalk,0,0.6)	
}
if key_right and key_left {
realwalk = lerp(realwalk,0,0.6)	
}
if global.writingmode = 0 {
hsp = ((move * realwalk) / inwater) * (60 / global.maxfps)
}
if move = 0 { realwalk = 0 }

vsp = (vsp + ((grv * (60 / global.maxfps))/inwater))

if place_meeting(x,y+1,o_anyblock) {onice = false}
if place_meeting(x,y+1,o_iceblock) {onice = true}
if place_meeting(x,y+1,o_redblockmove) {onice = false}
if place_meeting(x,y+1,o_yellowblockmove) {onice = false}
if place_meeting(x,y+1,o_greenblockmove) {onice = false}
if place_meeting(x,y+1,o_blueblockmove) {onice = false}
if place_meeting(x,y+1,o_whiteblockmove) {onice = false}
if place_meeting(x,y+1,o_shooter) {onice = false}
if place_meeting(x,y+1,o_shooterright) {onice = false}
if place_meeting(x,y+1,o_rocketlauncher) {onice = false}
if place_meeting(x,y+1,o_rocketlauncherright) {onice = false}
if place_meeting(x,y+1,o_onewayupblock) {onice = false}

if y > room_height - 30 {
	death()
	global.totalvoiddeaths += 1
}

//Particles (Left/Right)

if global.playerpar = 2 {
par_walktimer -= 1 * (60 / global.maxfps)
if par_walktimer < 0 {
if key_right || key_left {
if place_meeting(x,y+1,o_anyblock) {
par_walk = instance_create(x+14,y+27,o_parwalk)
par_walktimer = 3
}}}

}

//Jumps (Optimized Code)
if (doublejump = 1) and (key_jump) {jump()}

if (place_meeting(x,y+1,o_anyblock)) and (key_jump) {jump()}
if (place_meeting(x,y+1,o_redblockmove)) and (key_jump) {jump()}
if (place_meeting(x,y+1,o_yellowblockmove)) and (key_jump) {jump()}
if (place_meeting(x,y+1,o_greenblockmove)) and (key_jump) {jump()}
if (place_meeting(x,y+1,o_blueblockmove)) and (key_jump) {jump()}
if (place_meeting(x,y+1,o_whiteblockmove)) and (key_jump) {jump()}
if (place_meeting(x,y+1,o_shooter)) and (key_jump) {jump()}
if (place_meeting(x,y+1,o_shooterright)) and (key_jump) {jump()}
if (place_meeting(x,y+1,o_rocketlauncher)) and (key_jump) {jump()}
if (place_meeting(x,y+1,o_rocketlauncherright)) and (key_jump) {jump()}
if vsp > 0 {
if (place_meeting(x,y+1,o_onewayupblock)) and (key_jump) { {jump()} }
}
if (place_meeting(x,y+1,o_iceblock)) and (key_jump) {jump()}
if (place_meeting(x,y,o_ladder)) and (key_jump) { 
	vsp = -3
	onice = false
	if !audio_is_playing(snd_ladder) {
	audio_play_sound(snd_ladder,0,0)
	}
	}

if jumptestdebug = true {
if !(place_meeting(x,y+1,o_anyblock)) { jumptest += 1 * (60 / global.maxfps) } else {
if jumptest > jumptest2 {
jumptest2 = jumptest
}
jumptest = 0
}}
	
//Sound
if global.noclip = 0 {
if global.writingmode = 0 {
if (place_meeting(x,y+1,o_anyblock)) || (place_meeting(x,y+1,o_redblockmove)) || (place_meeting(x,y+1,o_yellowblockmove)) || (place_meeting(x,y+1,o_greenblockmove)) || (place_meeting(x,y+1,o_blueblockmove)) || (place_meeting(x,y+1,o_whiteblockmove))  || (place_meeting(x,y+1,o_shooter)) || (place_meeting(x,y+1,o_rocketlauncherright)) || (place_meeting(x,y+1,o_rocketlauncher)) || (place_meeting(x,y+1,o_shooterright)) || (place_meeting(x,y+1,o_onewayupblock)) {
if (key_jump) {
if !place_meeting(x,y,o_onewayupblock) {
if !place_meeting(x,y,o_onewaydownblock) {
audio_sound_pitch(snd_jump,random_range(0.9,1.1));
audio_sound_gain(snd_jump,global.soundvolume,1)	
audio_play_sound(snd_jump,10,0)
}}}}}
//Horizontal Collision
horizontalcollision()
x = x + hsp

//Vertical Collision
verticalcollision()
y = y + vsp * (60 / global.maxfps)
if vsp > 30 * (global.maxfps / 60) { vsp = 30 * (global.maxfps / 60) }
}

//Animation
if global.skinselected != 23 {
if vsp < -0.1 and !hsp  { image_index = 6 } //Jump
if vsp > 0.1 and !hsp  { image_index = 3 } //Fall
if key_right and vsp = 0 { image_index = 1 } //Moving right without jumping
if key_right and vsp < -0.1 { image_index = 7 } //Jumping right
if key_right and vsp > 0.1 { image_index = 4 } //Falling right
if key_left and vsp = 0 { image_index = 2 } //Moving left without jumpin
if key_left and vsp < -0.1 { image_index = 8 } //Jumping left
if key_left and vsp > 0.1 { image_index = 5 } //Falling left
if key_right and key_left and vsp > 0.1 { image_index = 3 } //Falling while pressing left and right
if key_right and key_left and vsp < -0.1 { image_index = 6 } //Jumping while pressing left and right
if key_right and key_left and vsp = 0 { image_index = 0} //Pressing left and right
}
if key_right { global.playermove = 1 }
if key_left { global.playermove = -1 }
//Colors (AND SKINS)
switch(global.skinselected) {
case 0:
if global.color = 0 {sprite_index = s_playerred}
if global.color = 1 {sprite_index = s_playeryellow}
if global.color = 2 {sprite_index = s_playergreen}
if global.color = 3 {sprite_index = s_playerblue}
if global.color = 4 {sprite_index = s_playerwhite}
break;
case 1:
if global.color = 0 {sprite_index = s_kaizoplayerred}
if global.color = 1 {sprite_index = s_kaizoplayeryellow}
if global.color = 2 {sprite_index = s_kaizoplayergreen}
if global.color = 3 {sprite_index = s_kaizoplayerblue}
if global.color = 4 {sprite_index = s_kaizoplayerwhite}
break;
case 2:
if global.color = 0 {sprite_index = s_madplayerred}
if global.color = 1 {sprite_index = s_madplayeryellow}
if global.color = 2 {sprite_index = s_madplayergreen}
if global.color = 3 {sprite_index = s_madplayerblue}
if global.color = 4 {sprite_index = s_madplayerwhite}
break;
case 3:
if global.color = 0 {sprite_index = s_blindplayerred}
if global.color = 1 {sprite_index = s_blindplayeryellow}
if global.color = 2 {sprite_index = s_blindplayergreen}
if global.color = 3 {sprite_index = s_blindplayerblue}
if global.color = 4 {sprite_index = s_blindplayerwhite}
break;
case 4:
if global.color = 0 {sprite_index = s_sadplayerred}
if global.color = 1 {sprite_index = s_sadplayeryellow}
if global.color = 2 {sprite_index = s_sadplayergreen}
if global.color = 3 {sprite_index = s_sadplayerblue}
if global.color = 4 {sprite_index = s_sadplayerwhite}
if global.playerpar = 1 {
if global.deaths > 0 {tearcooldown -= random_range(0.01,0.1)}
if global.deaths > 1 {tearcooldown -= random_range(0.01,0.1)}
if global.deaths > 3 {tearcooldown -= random_range(0.01,0.1)}
if global.deaths > 5 {tearcooldown -= random_range(0.01,0.1)}
if global.deaths > 10 {tearcooldown -= random_range(0.01,0.1)}
if global.deaths > 25 {tearcooldown -= random_range(0.01,0.1)}
if global.deaths > 50 {tearcooldown -= random_range(0.01,0.1)}
if global.deaths > 100 {tearcooldown -= random_range(0.01,0.1)}
if global.deaths > 150 {tearcooldown -= random_range(0.01,0.1)}
if global.deaths > 250 {tearcooldown -= random_range(0.01,0.1)}
if global.deaths > 500 {tearcooldown -= random_range(0.01,0.1)}
if tearcooldown < 0 {
instance_create(x+random_range(8,22),y+18,o_playertear)
tearcooldown = 5 * (global.maxfps / 60)
}}
break;
case 5:
if global.color = 0 {sprite_index = s_blockplayerred}
if global.color = 1 {sprite_index = s_blockplayeryellow}
if global.color = 2 {sprite_index = s_blockplayergreen}
if global.color = 3 {sprite_index = s_blockplayerblue}
if global.color = 4 {sprite_index = s_blockplayerwhite}
break;
case 6:
if global.color = 0 {sprite_index = s_hdplayerred}
if global.color = 1 {sprite_index = s_hdplayeryellow}
if global.color = 2 {sprite_index = s_hdplayergreen}
if global.color = 3 {sprite_index = s_hdplayerblue}
if global.color = 4 {sprite_index = s_hdplayerwhite}
break;
case 7:
if global.color = 0 {sprite_index = s_rewardedplayerred}
if global.color = 1 {sprite_index = s_rewardedplayeryellow}
if global.color = 2 {sprite_index = s_rewardedplayergreen}
if global.color = 3 {sprite_index = s_rewardedplayerblue}
if global.color = 4 {sprite_index = s_rewardedplayerwhite}
break;
case 8:
if global.color = 0 {sprite_index = s_angryplayerred}
if global.color = 1 {sprite_index = s_angryplayeryellow}
if global.color = 2 {sprite_index = s_angryplayergreen}
if global.color = 3 {sprite_index = s_angryplayerblue}
if global.color = 4 {sprite_index = s_angryplayerwhite}
break;
case 9:
if global.color = 0 {sprite_index = s_coolplayerred}
if global.color = 1 {sprite_index = s_coolplayeryellow}
if global.color = 2 {sprite_index = s_coolplayergreen}
if global.color = 3 {sprite_index = s_coolplayerblue}
if global.color = 4 {sprite_index = s_coolplayerwhite}
break;
case 10:
sprite_index = s_thedarkknightskin
scr_playerrbg()
break;
case 11:
if global.color = 0 {sprite_index = s_richplayerred}
if global.color = 1 {sprite_index = s_richplayeryellow}
if global.color = 2 {sprite_index = s_richplayergreen}
if global.color = 3 {sprite_index = s_richplayerblue}
if global.color = 4 {sprite_index = s_richplayerwhite}
break;
case 12:
sprite_index = s_goldplayerskin
goldcooldown = irandom_range(0,10)
	if global.playerpar = 1 {
	if goldcooldown = 0 {
var star = instance_create(x+12,y+14,o_itemstar);
with star { image_blend = c_yellow }
}}
break;
case 13:
if global.color = 0 {sprite_index = s_frozenplayerred}
if global.color = 1 {sprite_index = s_frozenplayeryellow}
if global.color = 2 {sprite_index = s_frozenplayergreen}
if global.color = 3 {sprite_index = s_frozenplayerblue}
if global.color = 4 {sprite_index = s_frozenplayerwhite}
break;
case 14:
scr_playerrbgnormal()
break;
case 15:
if global.color = 0 {sprite_index = s_coronaplayerred}
if global.color = 1 {sprite_index = s_coronaplayeryellow}
if global.color = 2 {sprite_index = s_coronaplayergreen}
if global.color = 3 {sprite_index = s_coronaplayerblue}
if global.color = 4 {sprite_index = s_coronaplayerwhite}
break;
case 16:
if global.color = 0 {sprite_index = s_canadianplayerred}
if global.color = 1 {sprite_index = s_canadianplayeryellow}
if global.color = 2 {sprite_index = s_canadianplayergreen}
if global.color = 3 {sprite_index = s_canadianplayerblue}
if global.color = 4 {sprite_index = s_canadianplayerwhite}
break;
case 17:
if global.color = 0 {sprite_index = s_playerred}
if global.color = 1 {sprite_index = s_playeryellow}
if global.color = 2 {sprite_index = s_playergreen}
if global.color = 3 {sprite_index = s_playerblue}
if global.color = 4 {sprite_index = s_playerwhite}
break;
case 18:
if global.color = 0 {sprite_index = s_babyplayerred}
if global.color = 1 {sprite_index = s_babyplayeryellow}
if global.color = 2 {sprite_index = s_babyplayergreen}
if global.color = 3 {sprite_index = s_babyplayerblue}
if global.color = 4 {sprite_index = s_babyplayerwhite}
break;
case 19:
if global.color = 0 {sprite_index = s_hexagonplayerred}
if global.color = 1 {sprite_index = s_hexagonplayeryellow}
if global.color = 2 {sprite_index = s_hexagonplayergreen}
if global.color = 3 {sprite_index = s_hexagonplayerblue}
if global.color = 4 {sprite_index = s_hexagonplayerwhite}
break;
case 20:
if global.color = 0 {sprite_index = s_tuxedoplayerred}
if global.color = 1 {sprite_index = s_tuxedoplayeryellow}
if global.color = 2 {sprite_index = s_tuxedoplayergreen}
if global.color = 3 {sprite_index = s_tuxedoplayerblue}
if global.color = 4 {sprite_index = s_tuxedoplayerwhite}
break;
case 21:
scr_playerrbg()
if vsp = 0 {
eyesY = lerp(eyesY,0,0.2 * (60 / global.maxfps))
}
if vsp < 0 {
eyesY = lerp(eyesY,-7,0.2 * (60 / global.maxfps))
}
if vsp > 0 {
eyesY = lerp(eyesY,7,0.2 * (60 / global.maxfps))
}
if hsp != 0 {
if global.playermove = 1 {
eyesX = lerp(eyesX,6,0.2 * (60 / global.maxfps))
}
if global.playermove = -1 {
eyesX = lerp(eyesX,-6,0.2 * (60 / global.maxfps))
}
if changesizeanimated = 0 {
if basesize < 1.1 {
basesize = lerp(basesize,0.92,0.1 * (60 / global.maxfps))
if basesize < 0.93 {
changesizeanimated = 1
}
}}

if changesizeanimated = 1 {
if basesize > 0.92 {
basesize = lerp(basesize,1.01,0.1 * (60 / global.maxfps))
if basesize > 1 {
changesizeanimated = 0
}
}}
}
if hsp = 0 {
eyesX = lerp(eyesX,0,0.2 * (60 / global.maxfps))
basesize = lerp(basesize,1,0.1 * (60 / global.maxfps))
changesizeanimated = 0
}
randomblinking -= 1
if randomblinking < 0 {
blinkinganimatioon += 0.33 * (60 / global.maxfps)
if blinkinganimatioon > 9 {
blinkinganimatioon = 0
randomblinking = irandom_range(250,450)	
}}
break;
case 22:
if global.color = 0 {sprite_index = s_playerred}
if global.color = 1 {sprite_index = s_playeryellow}
if global.color = 2 {sprite_index = s_playergreen}
if global.color = 3 {sprite_index = s_playerblue}
if global.color = 4 {sprite_index = s_playerwhite}
break;
case 23:
if key_right { image_index = 0 }
if key_left {image_index = 1 }
scr_playerrbgnormal()
break;
case 24:
if key_right { rotation -= realwalk }
if key_left {rotation += realwalk }
scr_playerrbgnormal()
case 25:
if global.color = 0 {sprite_index = s_playerred}
if global.color = 1 {sprite_index = s_playeryellow}
if global.color = 2 {sprite_index = s_playergreen}
if global.color = 3 {sprite_index = s_playerblue}
if global.color = 4 {sprite_index = s_playerwhite}
break;
case 26:
sprite_index = s_hitboxplayerskin
scr_playerrbgnormal()
break;
case 27:
scr_playerrbgnormal()
break;
case 28:
scr_playerrbgnormal()
break;
case 29: scr_playerrbgnormal() break;
case 30:
scr_playerrbgnormal()
scr_animatedeyes()

if vsp < -0.1 and !hsp  { googlyeyesrot = 0 } //Jump
if vsp > 0.1 and !hsp  { googlyeyesrot = 180 } //Fall
if key_right and vsp = 0 { googlyeyesrot = 270 } //Moving right without jumping
if key_right and vsp < -0.1 { googlyeyesrot = 315 } //Jumping right
if key_right and vsp > 0.1 { googlyeyesrot = 225 } //Falling right
if key_left and vsp = 0 { googlyeyesrot = 90 } //Moving left without jumpin
if key_left and vsp < -0.1 { googlyeyesrot = 35 } //Jumping left
if key_left and vsp > 0.1 { googlyeyesrot = 135 } //Falling left
if key_right and key_left and vsp > 0.1 { googlyeyesrot = 180 } //Falling while pressing left and right
if key_right and key_left and vsp < -0.1 { googlyeyesrot = 0 } //Jumping while pressing left and right
if key_right and key_left and vsp = 0 { googlyeyesrot = 0 } //Pressing left and right
googlyeyesrotreal = lerp(googlyeyesrotreal,googlyeyesrot,0.25 * (60 / global.maxfps))
if keyboard_check_pressed(vk_anykey) {
randomeeyerotationR = lerp(randomeeyerotationR,random_range(-360,360),0.2 * (60 / global.maxfps))
randomeeyerotationL = lerp(randomeeyerotationL,random_range(-360,360),0.2 * (60 / global.maxfps))	
}
break;
case 31: scr_playerrbgnormal() break;
case 32:
scr_playerrbgnormal()
scr_animatedeyes()
break;
case 33:
scr_playerrbgnormal()
scr_animatedeyes()
break;
case 34: scr_playerrbgnormal() break;
case 36: scr_playerrbgnormal() break;
case 37: scr_playerrbgnormal() break;
case 38: scr_playerrbgnormal() break;
}
if global.color = 4 { 
	if global.playerpar = 1 {
	if whiteplayer = 0 {
	instance_create(x+12,y+14,o_whitecircleeffect);	
	whiteplayer = 1
	}}}
//Wrap Script
if place_meeting(x,y,o_blockwrapleft) {
x = room_width;
}
if place_meeting(x,y,o_blockwrapright){
x = -32
}
//Teleporter
if teleportcooldown >= 0 {
if !place_meeting(x,y,o_portalpurpleclosed) {
if !place_meeting(x,y,o_portalpurpleopen) {
teleportcooldown -= 1 * (60 / global.maxfps)
}}}
if teleportcooldown < 0 {
if place_meeting(x,y,o_portalpurpleopen) {
portallast = 0	
}
if place_meeting(x,y,o_portalpurpleclosed) {
portallast = 1
}
}
if teleportcooldown <= 0 {
if portallast = 0 {	
if place_meeting(x,y,o_portalpurpleopen) {
if instance_exists(o_portalpurpleclosed) {
teleportcooldown = 15
if global.itempar = 1 {
repeat (irandom_range(3,7)) { var star = instance_create(x+16,y+16,o_itemstar)
with star { image_blend = c_fuchsia }}
}
audio_sound_pitch(snd_portal,random_range(0.9,1.1));
audio_play_sound(snd_portal,10,0)
x = o_portalpurpleclosed.x
y = o_portalpurpleclosed.y
if room != r_leveleditor {
global.totalportal += 1
}
}}}
if place_meeting(x,y,o_portalpurpleclosed) {
if portallast = 1 {		
if instance_exists(o_portalpurpleopen) {
teleportcooldown = 15
repeat (irandom_range(3,7)) { var star = instance_create(x+16,y+16,o_itemstar)
with star { image_blend = c_fuchsia }}
audio_sound_pitch(snd_portal,random_range(0.9,1.1));
audio_play_sound(snd_portal,10,0)
x = o_portalpurpleopen.x
y = o_portalpurpleopen.y
if room != r_leveleditor {
global.totalportal += 1
}
}}}}

//Gun
if place_meeting(x,y,o_gunequipped) {
if key_interact {
if inwater = 1 {
if global.gunammo > 0 {
instance_destroy(o_lastshotplayer)
instance_create(x+16,y+16,o_lastshotplayer)
if room != r_leveleditor { global.totalgunshots += 1 }
if global.playermove = -1 {
instance_create(x,y+12,o_playerbullet)
}
if global.playermove = 1 {
instance_create(x+30,y+12,o_playerbullet)
}
if global.playermove = 0 {
instance_create(x+25,y+12,o_playerbullet)
image_index = 1
}
if global.gunammoinfinite = false { global.gunammo -= 1 }
}
if global.gunammo < 1 {
audio_play_sound(snd_noammo,0,0)
}
} else { audio_play_sound(snd_noammo,0,0) }
}}
if instance_exists(o_gunequipped) {
if key_right { o_gunequipped.timer = 0 }	
if key_left { o_gunequipped.timer = 0 }
}

//Death Triggers
if global.easy = 0 {
if global.color != 4 {

//RED DEATH
if global.color != 0 {
if !place_meeting(x,y-1,o_yellowblock) and !place_meeting(x,y+1,o_yellowblock) and !place_meeting(x,y-1,o_greenblock) and !place_meeting(x,y+1,o_greenblock) and !place_meeting(x,y-1,o_blueblock) and !place_meeting(x,y+1,o_blueblock) {
if place_meeting(x-10,y-10,o_redblockmove) || place_meeting(x+1,y+2,o_redblockmove) || place_meeting(x+1,y+1,o_redblock) || place_meeting(x-1,y+1,o_redblock) || place_meeting(x+1,y-1,o_redblock) || place_meeting(x-1,y-1,o_redblock) {
	blockdeath()
}}
if hsp = 0 {
if place_meeting(x+1,y,o_redblock) || place_meeting(x-1,y,o_redblock) {
blockdeath()
}}
if passblockcooldown < 1 {
if place_meeting(x,y,o_redpassblock) { blockdeath() }
}}


//YELLOW DEATH
if global.color != 1 {
if !place_meeting(x,y-1,o_redblock) and !place_meeting(x,y+1,o_redblock) and !place_meeting(x,y-1,o_greenblock) and !place_meeting(x,y+1,o_greenblock) and !place_meeting(x,y-1,o_blueblock) and !place_meeting(x,y+1,o_blueblock) {
if place_meeting(x-10,y-10,o_yellowblockmove) || place_meeting(x+1,y+2,o_yellowblockmove) || place_meeting(x-1,y-1,o_yellowblock) || place_meeting(x+1,y+1,o_yellowblock) || place_meeting(x-1,y+1,o_yellowblock) || place_meeting(x+1,y-1,o_yellowblock) {
blockdeath() 
}}

if hsp = 0 {
if place_meeting(x+1,y,o_yellowblock) || place_meeting(x-1,y,o_yellowblock) {
blockdeath()
}}

if passblockcooldown < 1 {
if place_meeting(x,y,o_yellowpassblock) { blockdeath() }
}}


//GREEN DEATH
if global.color != 2 {
if !place_meeting(x,y-1,o_yellowblock) and !place_meeting(x,y+1,o_yellowblock) and !place_meeting(x,y-1,o_redblock) and !place_meeting(x,y+1,o_redblock) and !place_meeting(x,y-1,o_blueblock) and !place_meeting(x,y+1,o_blueblock) {
if place_meeting(x-10,y-10,o_greenblockmove) || place_meeting(x+1,y+2,o_greenblockmove) || place_meeting(x-1,y-1,o_greenblock) || place_meeting(x+1,y+1,o_greenblock) || place_meeting(x-1,y+1,o_greenblock) || place_meeting(x+1,y-1,o_greenblock) {
blockdeath() 
}}

if hsp = 0 {
if place_meeting(x+1,y,o_greenblock) || place_meeting(x-1,y,o_greenblock) {
blockdeath()
}}

if passblockcooldown < 1 {
if place_meeting(x,y,o_greenpassblock) { blockdeath() }
}}

//BLUE DEATH
if global.color != 3 {
if !place_meeting(x,y-1,o_yellowblock) and !place_meeting(x,y+1,o_yellowblock) and !place_meeting(x,y-1,o_greenblock) and !place_meeting(x,y+1,o_greenblock) and !place_meeting(x,y-1,o_redblock) and !place_meeting(x,y+1,o_redblock) {
if place_meeting(x-10,y-10,o_blueblockmove) || place_meeting(x+1,y+2,o_blueblockmove) || place_meeting(x-1,y-1,o_blueblock) || place_meeting(x+1,y+1,o_blueblock) || place_meeting(x-1,y+1,o_blueblock) || place_meeting(x+1,y-1,o_blueblock) {
blockdeath() 
}}

if hsp = 0 {
if place_meeting(x+1,y,o_blueblock) || place_meeting(x-1,y,o_blueblock) {
blockdeath()
}}

if passblockcooldown < 1 {
if place_meeting(x,y,o_bluepassblock) { blockdeath() }
}}

//WHITE
if passblockcooldown < 1 {
if place_meeting(x,y,o_whitepassblock) {
blockdeath() }}

}

//Other Deaths
if place_meeting(x,y,o_hazard) {death()}
if instance_exists(o_lockedblock) {
if o_lockedblock.sprite_index = s_lockedblock {
if place_meeting(x,y,o_lockedblock) { blockdeath() }
}}
if instance_exists(o_unlockedblock) {
if o_unlockedblock.sprite_index = s_lockedblock {
if place_meeting(x,y,o_unlockedblock) { blockdeath() }
}}

if place_meeting(x,y,o_gravitylimit01) { 
if grv != 0.027 {
	blockdeath() 
	}}
if place_meeting(x,y,o_gravitylimit05) { 
if grv != 0.172 {
	blockdeath() 
	}}
if place_meeting(x,y,o_gravitylimit15) { 
if grv != 0.5 {
	blockdeath() 
	}}
if place_meeting(x,y,o_gravitylimit25) { 
if grv != 0.83 {
	blockdeath() 
	}}
if place_meeting(x,y,o_speedlimit5) { 
if walksp != 2.8 {
	blockdeath() 
	}}
if place_meeting(x,y,o_speedlimit7) { 
if walksp != 4 {
	blockdeath() 
	}}
if place_meeting(x,y,o_speedlimit10) { 
if walksp != 5.5 {
	blockdeath() 
	}}
if place_meeting(x,y,o_speedlimit15) { 
if walksp != 8.5 {
	blockdeath() 
	}}
}

//Next Level
if room != r_leveleditor {
if place_meeting(x,y+3,o_door) {
if global.endless = 0 {
global.pickup = 0
scr_loadsettings()
global.totallevelcompleted += 1
scr_savestats()
room_goto_next()
global.checkpointX = 0
global.checkpointY = 0
global.checkpointCOLOR = -1
global.checkpointGRV = 0
global.checkpointAMMO = 0
if global.hardmodedifficulty = 6 { 
	global.timeleftHM += 10 + (global.time / 90)
	}
if global.hardmodedifficulty = 7 {
	global.timeleftHM += 8 + (global.time / 80)
	}
if global.hardmode = 0 {
if global.challenges = 0 {
scr_savegame()
}
}
}
if global.endless = 1 {
	var highscorepitch = 1
	randomlevel()
	global.totallevelcompleted += 1
	global.endlesslevel += 1
	scr_checkachievements()
	if global.endlessrunmode = 1 {
	if global.endlesslevel > global.newendlesslevelhighscore { 
		highscorepitch = (global.endlesslevel - 1) / global.newendlesslevelhighscore
		if highscorepitch > 1.6 { highscorepitch = 1.6 }
		audio_sound_pitch(snd_newhighscore,highscorepitch)
		audio_play_sound(snd_newhighscore,10,0) }}
	if global.endlessrunmode = 2 {
		highscorepitch = (global.endlesslevel - 1) / global.endlesslevelhighscore
		if highscorepitch > 1.6 { highscorepitch = 1.6 }
		audio_sound_pitch(snd_newhighscore,highscorepitch)
	if global.endlesslevel > global.endlesslevelhighscore { audio_play_sound(snd_newhighscore,10,0) }}
		
	if global.infinitelivessettings = 0 {
		switch(global.endlessrunmode) {
		case(1): rousr_dissonance_set_details("Playing Endless Run [Score: " + string(global.endlesslevel) + "]") break;
		case(2): rousr_dissonance_set_details("Playing O.S Endless Run [Score: " + string(global.endlesslevel) + "]") break;
		case(3): rousr_dissonance_set_details("Playing Custom Endless Run [Score: " + string(global.endlesslevel) + "]") break;
		}
		}
	}
}
} else { 
if place_meeting(x,y+3,o_door) {
if !instance_exists(o_key) {
global.LEMode = 1
global.LEVerified = 1
rousr_dissonance_set_timestamps(undefined,undefined)
instance_destroy(o_time)
instance_destroy(o_timecounter)
instance_destroy(o_deathcounter)
instance_destroy(o_savedandloaded)
box = instance_create(x,y,o_savedandloaded)
with box { image_index = 2 }
instance_destroy() }}}

//Debug
if debug_mode{
	if keyboard_check_pressed(ord("N")) {
	if global.endless = 0 {
room_goto_next()	
	} else { randomlevel() }
	}	
		if keyboard_check_pressed(ord("P")) {
	if global.endless = 0 {
room_goto_previous()	
	} else { randomlevel() }
	}
		if keyboard_check_pressed(ord("M")) {
audio_stop_all()
	}	
}