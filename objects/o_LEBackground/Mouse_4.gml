if global.challenges = 1749610 {
if !instance_exists(o_demoask) {instance_create(x,y,o_demoask)}
exit
}

if instance_exists(o_leveleditorleaveask) { exit }

if global.LEMode = 1 { 

if instance_exists(o_namelevelLE) { exit }
if global.LEBuild != 2 {
	audio_play_sound(snd_hitboss,0,0)
	global.LES = 0
	}
global.LEBuild = 2

}