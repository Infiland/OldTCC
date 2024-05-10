/// @description Variables
declarecustombutton()
switch(global.language) {
default: text = "Give\nFeedback" break;
case(1): text = "Gebe\nFeedback" break; //German
case(2): text = "Donner des\ncommentaires" 
xscale = 0.5
yscale = 0.5
break; //French
case(3): text = "Lascia\nFeedback" break; //Italian
case(4): text = "Dar\nFeedback" break; //Spanish
case(5): text = "Küldj\nvisszajelzést" break //Hungarian
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