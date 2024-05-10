image_alpha -= 0.05* (60 / global.maxfps);
speed += 0.25* (60 / global.maxfps)

if image_alpha < 0 {
instance_destroy();	
}