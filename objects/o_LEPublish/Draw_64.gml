draw_self()
if page = global.LEbuttonpage { y = lerp(y,ystart,0.2 * (60 / global.maxfps)) } else {
y = lerp(y,-64,0.2 * (60 / global.maxfps))
}
if global.LEMode = 1 { image_alpha = 1 } else
{ image_alpha = 0.5 }