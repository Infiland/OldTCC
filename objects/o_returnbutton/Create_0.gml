/// @description Variables
declarecustombutton()
image_xscale = 20
image_yscale = 10
xscale = 0.5
yscale = 0.5
width = 3

switch(global.language) {
default: text = "Return" break;
case(1): text = "Zurück" break;
case(2): text = "Retour" break;
case(3): text = "Indietro" break;
case(4): text = "Volver" break;
case(5): text = "Vissza" break;
}


ingame = false
image_speed = 0;
depth = -10000000000
if room = r_leveleditor {
alarm[0] = 1	
}
if instance_exists(o_pausescreen) {
vx = 0
vy = 0

text = "Go to\nMain Menu"
xscale = 0.3
yscale = 0.3
if instance_exists(o_smoothcamera) {
vx = camera_get_view_x(view_camera[0])
vy = camera_get_view_y(view_camera[0])
}

oldx = 480 + vx
oldy = 490 + vy
}