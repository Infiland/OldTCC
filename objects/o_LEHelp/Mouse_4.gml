if page != global.LEbuttonpage { exit }
if instance_exists(o_leveleditorleaveask) { exit }

if instance_exists(o_namelevelLE) { exit }
audio_play_sound(snd_hitboss,0,0)
if !instance_exists(o_LETutorial) {
instance_create(128,192,o_LETutorial)
with (o_LETutorial) {
image_xscale = 2
image_yscale = 2
}
}
depth = -700