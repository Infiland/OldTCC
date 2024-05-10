if onmouse = 1 {
	scale = 1.5
} else {
	scale = 1
}

image_xscale = lerp(image_xscale,scale,0.1 * (60 / global.maxfps))
image_yscale = lerp(image_yscale,scale,0.1 * (60 / global.maxfps))