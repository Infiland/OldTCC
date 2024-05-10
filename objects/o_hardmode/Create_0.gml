/// @description Variables
declarecustombutton()
text = "Hard Mode"

scr_loadhardmode()
global.deaths = 0
global.special = 0
global.pickup = 0
global.LES = 0;
global.talelistened = 0
image_speed = 0;
if global.hardmodeunlock < 1 {sprite_index = s_lockedbutton}