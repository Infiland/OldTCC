if global.skin011 = 0 {
sprite_index = s_lockedskinbutton	
}
if global.skin011 = 1 {
sprite_index = s_darkknightskinbutton
}
if global.skinschange = 0 {
x = lerp(x,originalx,0.2 * (60 / global.maxfps))
y = lerp(y,originaly,0.2 * (60 / global.maxfps))
}
if global.skinschange = 1 {
x = lerp(x,40,0.2 * (60 / global.maxfps))
y = lerp(y,352,0.2 * (60 / global.maxfps))
}