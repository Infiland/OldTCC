if global.challenges = 1749610 {
if !instance_exists(o_demoask) {instance_create(x,y,o_demoask)}
exit
}

if global.autothumbnailsettings = 0 { 
	global.autothumbnailsettings = 1
	} else { global.autothumbnailsettings = 0 }