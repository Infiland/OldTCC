if global.skin013 = 0 {
sprite_index = s_lockedskinbutton	
}
if global.skin013 = 1 {
sprite_index = s_goldplayerskinbutton
}

if global.skinschange = 0 {
x = lerp(x,originalx,0.2 * (60 / global.maxfps))
y = lerp(y,originaly,0.2 * (60 / global.maxfps))
}
if global.skinschange = 1 {
x = lerp(x,160,0.2 * (60 / global.maxfps))
y = lerp(y,352,0.2 * (60 / global.maxfps))
}