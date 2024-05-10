if global.pause = 1 { exit }
if instance_exists(o_player) {
x = lerp(x,o_player.x,(0.04 + (0.02 * (o_player.vsp / 15)) * (60 / global.maxfps)))
y = lerp(y,o_player.y,(0.04 + (0.02 * (o_player.vsp / 15)) * (60 / global.maxfps)))
} else {
x = lerp(x,o_playerdead.x,(0.04 * (60 / global.maxfps)))
y = lerp(y,o_playerdead.y,(0.04 * (60 / global.maxfps)))
}
/*
x += (xTo - x)/25
y += (yTo - y)/25

if !instance_exists(o_player) {
follow = o_playerdead
xzoom -= 8
yzoom -= 6
}

if (follow != noone) {
xTo = follow.x
yTo = follow.y
}