/// @description Variables
declarecustombutton()
switch(global.language) {
default: text = "Listen OST" break;
case(1): text = "Offizieller\nSoundtrack" //Germany
xscale = 0.52
yscale = 0.52
break;
case(2): text = "Écouter la\nmusique" //French
xscale = 0.55
yscale = 0.55
break;
case(3): text = "Ascolta la\nColonna Sonora" //Italian
xMULTI = 0.7
yMULTI = 0.7
wide = 500
break;
case(4): text = "Escuchar la\nbanda sonora" //Spanish
xMULTI = 0.7
yMULTI = 0.7
wide = 500
break;
}

image_speed = 0;
depth = -10000

if room != r_support {
vx = 0
vy = 0
if instance_exists(o_smoothcamera) {
vx = camera_get_view_x(view_camera[0])
vy = camera_get_view_y(view_camera[0])

x = 750 + vx
y = 670 + vy
}}