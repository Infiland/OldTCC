image_alpha = 1
image_index = 0
image_speed = 1/3 * (60 / global.maxfps)
gotheredead = random_range(2.5 * (60 / global.maxfps),-2.5 * (60 / global.maxfps))
fall = random_range(-1 * (60 / global.maxfps),1 * (60 / global.maxfps))
audio_stop_sound(snd_youfellformytrap)

if room = r_leveleditor {
instance_change(o_playerdeadLE,1)
}
switch(global.skinselected) {
case(5): sprite_index = s_blockplayerdead break;
case(19): sprite_index = s_hexagonplayerdead break;
case(24): 
x += 16
y += 16
break;
case(25):
instance_create(x+16,y+16,o_explosionbomber)
break;
}