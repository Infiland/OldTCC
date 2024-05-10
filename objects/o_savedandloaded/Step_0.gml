if timer > 0 {
timer -= 1	
}
if timer < 1 {
image_alpha -= 0.03 * (60 / global.maxfps)
}
if image_alpha < 0 { instance_destroy() }
y = lerp(y,416,0.2 * (60 / global.maxfps))