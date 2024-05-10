/// @description Keys presses
var directory = working_directory + "/LevelEditor Files/" + "/" + text + "/"


if global.naminglevel = true {
if(keyboard_check(vk_anykey) and string_length(text) < 40) {
text += string(keyboard_string)
keyboard_string = "";
}
if keyboard_check_pressed(vk_backspace) {
text = string_delete(text,string_length(text),1)
keyboard_string = "";
delete_timer = -4 * floor((global.maxfps / 60))
}
//Handle Delete time
if delete_timer != 2 {
delete_timer += 1;
}
if keyboard_check_pressed(vk_enter) {
instance_destroy()
instance_destroy(o_allbackgrounds)
global.levelname = text
//Load
if global.levelname != "" {
scr_loadleveleditor()

instance_create(x,y,o_levelreloadagain)
/*global.LEBuild = 1
global.LES = 0
scr_LEChangeScenery()
if !instance_exists(o_inputtext) {
instance_create(x,y,o_inputtext)
}
if instance_exists(o_inputtext) {
o_inputtext.text = global.leveleditorstring
keyboard_string = "";
global.writingmode = 0
}
audio_play_sound(snd_hitboss,0,0)
instance_destroy(o_player)
instance_destroy(o_LETutorial)
instance_destroy(o_enemyplayer)
instance_destroy(o_boredomblock)
instance_destroy(o_redparticle)
instance_destroy(o_yellowparticle)
instance_destroy(o_greenparticle)
instance_destroy(o_blueparticle)
instance_destroy(o_whiteparticle)
scr_leveleditormusic()

if directory_exists(directory) {
if !instance_exists(o_deathcounter) {
instance_create(x,y,o_deathcounter)
}
if !instance_exists(o_timecounter) {
instance_create(x,y,o_timecounter)
}
if !instance_exists(o_time) {
instance_create(x,y,o_time)
}}

depth = -700
global.naminglevel = false
global.LEVerified = 0*/

if !steam_get_achievement("LOAD_LEVEL") { //Load Level
steam_set_achievement("LOAD_LEVEL") }
} else {
	instance_destroy(o_savedandloaded)
	box = instance_create(x,y,o_savedandloaded)
	with(box) {
	image_index = 3	
	}

}
}

if keyboard_check_released(vk_escape) {
instance_destroy()
global.levelname = global.previoustext
global.naminglevel = false
}
}