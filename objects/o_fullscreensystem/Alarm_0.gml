if global.pause = 0 {
if global.stars > 0 {instance_create(x,y,o_star)}
}

alarm[0] = 10 * (global.maxfps / 60)