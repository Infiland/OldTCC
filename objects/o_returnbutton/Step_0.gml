if ingame = true {
if instance_exists(o_settingspausemenu) {
x = lerp(x,vx + 896,0.2)
y = lerp(y,vy + 32,0.2)
sprite_index = s_returnbutton
} else {
x = oldx
y = oldy
sprite_index = s_returntomainmenu
}}