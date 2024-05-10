if global.pause = 1 { exit }
if instance_exists(o_player) {
x = o_player.x
y = o_player.y + 20
if o_player.walksp = 2.8 {timer -= 0.7 * (60 / global.maxfps)}
if o_player.walksp = 4 {timer -= 1 * (60 / global.maxfps)}
if o_player.walksp = 5.5 {timer -= 1.3 * (60 / global.maxfps)}
if o_player.walksp = 8.5 {timer -= 1.6 * (60 / global.maxfps)}
if timer < 0 { timer = 80 }
if timer < 40 {image_angle = lerp(image_angle,-350,0.1)}
if timer < 80 {image_angle = lerp(image_angle,-10,0.1)}
} else {
instance_destroy()	
}