if global.pause = 1{ 
	image_speed = 0
	exit 
	}
image_speed = 1/3 * (60 / global.maxfps)
fall += 0.25 * (60 / global.maxfps)
randomize()
image_alpha -= 0.025 * (60 / global.maxfps)
y -= (5 - fall) * (60 / global.maxfps)
if image_alpha < 0 {
room_restart()
if global.challenges = 0 {
if global.hardmode = 0 {
if global.endless = 0 {
scr_savegame()
}}}
}
x += gotheredead
if image_index = 5 { image_speed = 0 }