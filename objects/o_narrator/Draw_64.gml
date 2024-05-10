if instance_exists(o_settingspausemenu) { exit }
depth = -10000
draw_set_color(c_white)
draw_set_halign(fa_left)
draw_set_font(fnt_cool2);

if room = r_stats {

	}
if room = r_localmultiplayermenu { 
	draw_set_font(fnt_gamemode);
	if global.multiplayerplayers = 1 {
	draw_text(180,100,string_hash_to_newline("Choose amount of players:"))
	} else { 
		if global.multiplayerplayers >= global.multiplayerplayerconfigchoose {
		draw_text(310,100,string_hash_to_newline("Config player "+ string(global.multiplayerplayerconfigchoose))) } else {
		draw_text(250,100,"Choose a minigame!")	
		}
	}
	}	
depth = -10000
draw_set_color(c_white)
draw_set_halign(fa_left)
draw_set_font(fnt_cool2);

if room = r_localmultiplayermenu { 
	draw_set_font(fnt_gamemode);
	if global.multiplayerplayers = 1 {
	draw_text(180,100,string_hash_to_newline("Choose amount of players:"))
	} else { 
		if global.multiplayerplayers >= global.multiplayerplayerconfigchoose {
		draw_text(310,100,string_hash_to_newline("Config player "+ string(global.multiplayerplayerconfigchoose))) } else {
		draw_text(250,100,"Choose a minigame!")	
		}
	}
	}
if room = r_skinmenu { 
draw_set_font(fnt_death)
if global.customizeselect = 1 {
if global.skinschange = 0 {
	draw_text(464,585,"Page " + string(global.skinpage) + "/3")
}}
if global.customizeselect = 2 {
	draw_text(464,585,"Page " + string(global.hatpage) + "/4")
}
	}	

if room = r_settings { 
draw_set_font(fnt_cool)
if global.choosesettings = 1 {
	draw_text(830,160,"Graphics Presets")
}
	}

//Challenges Stats check
if room = r_challenges {
draw_set_font(fnt_death)
draw_set_color(c_white)
draw_text(32,704,"Hold [I] to see challenge stats.")
if keyboard_check(ord("I")) { global.challengeinfo = true } else { global.challengeinfo = false }
}

color = c_white

switch(room) {
case(r_lvl9): if global.special = 9 {color = c_yellow } break;
case(r_boss1prepare): color = c_yellow break;
case(r_boss2prepare): color = c_yellow break;
case(r_boss3prepare): color = c_yellow break;
case(r_taleroom): color = c_yellow break;
case(r_easteregg1): color = c_yellow break;
case(r_speedlvl5): color = c_red break;
case(r_cslvl5): color = c_yellow break;
case(r_cslvl6): color = c_yellow break;
}

if room != r_leveleditor {
if instance_exists(o_player) {
draw_text_outline(16,0,print,color,c_black)
}}

if room = r_customlevelworkshop {
	draw_text_outline(16,0,print,color,c_black)
}