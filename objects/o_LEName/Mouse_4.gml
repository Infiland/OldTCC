if page != global.LEbuttonpage { exit }
if instance_exists(o_leveleditorleaveask) { exit }

if global.LEMode = 1 {

if !instance_exists(o_LETutorial) {
if !instance_exists(o_namelevelLE) {
if !instance_exists(o_namelevelwhenloadingLE) {
instance_create(x,y,o_namelevelLE)
audio_play_sound(snd_hitboss,0,0)
keyboard_string = ""
global.naminglevel = true
}}}

}