if global.LEBuild = 1 {
instance_destroy()
if global.sound = 1 {
audio_play_sound(snd_torch,5,0);
}
instance_create(x+16,y+16,o_yellowpickup);
}