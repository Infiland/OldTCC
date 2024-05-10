if global.LEMode = 2 { 	draw_set_alpha(0) 
	image_alpha = 0 }

draw_self()
if global.LEBuild = 1 {
image_alpha = 1	
} else { image_alpha = 0.5 }