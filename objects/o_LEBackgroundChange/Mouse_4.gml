if page != global.LEbuttonpage { exit }
if instance_exists(o_leveleditorleaveask) { exit }

if global.LEMode = 1 {
if !instance_exists(o_namelevelLE) {
if !instance_exists(o_namelevelwhenloadingLE) {	
	
global.LEBackground += 1
if global.LEBackground > maxpage {
global.LEBackground = 0
}

scr_LEChangeBackground()
audio_play_sound(snd_hitboss,0,0)

}}}