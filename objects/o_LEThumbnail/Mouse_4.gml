if page != global.LEbuttonpage { exit }
if instance_exists(o_leveleditorleaveask) { exit }

if global.LEMode = 1 {
if global.levelname != "" {
if !instance_exists(o_LETutorial) {
if !instance_exists(o_namelevelLE) {
if !instance_exists(o_namelevelwhenloadingLE) {
audio_play_sound(snd_hitboss,0,0)
var directory = working_directory + "/LevelEditor Files/" + "/" + global.levelname + "/"
screen_save(directory + "/thumb.jpg")
}}}

}}