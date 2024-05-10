global.color = 0
rousr_dissonance_set_small_image("red","Currently Red Color")
o_player.passblockcooldown = 10
instance_destroy()
audio_play_sound(snd_pickup,5,0);

if global.itempar = 1 { instance_create(x+16,y+16,o_redpickup) }
if room != r_leveleditor { 
global.totalnormalpickups += 1
}