if page != global.LEbuttonpage { exit }
if instance_exists(o_leveleditorleaveask) { exit }

if global.LEMode = 1 {

if instance_exists(o_namelevelLE) { exit }
if !instance_exists(o_LETutorial) {
if global.writingmode = 0 { global.writingmode = 1 } else { global.writingmode = 0 }
if !instance_exists(o_inputtext) {
instance_create(x,y,o_inputtext)	
}
if instance_exists(o_inputtext) {
o_inputtext.text = global.leveleditorstring
keyboard_string = "";
}
audio_play_sound(snd_hitboss,0,0)

}}