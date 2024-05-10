draw_self()
if instance_exists(o_waterleveleditorline) { image_index = 1 } else { 
	image_index = 0 
    if global.LEBuild = 3 {
	draw_sprite_ext(s_liquidarrow,0,771,68,1,arrowyscale,0,c_white,1)
	if arrowyscale > 1 {
	change = 0
	}
	if arrowyscale < 0.9 {
	change = 1
	}
	if change = 0 { arrowyscale = lerp(arrowyscale,0.89,0.1) } else { arrowyscale = lerp(arrowyscale,1.01,0.1) }
	}}
if global.LEBuild = 3 {
image_alpha = 1	
} else { image_alpha = 0.5 }

if global.LEMode = 2 { image_alpha = 0 }