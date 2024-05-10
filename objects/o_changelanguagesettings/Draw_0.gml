if global.choosesettings != 5 { x = lerp(x,camera_get_view_x(view_camera[0])-256,0.2 * (60 / global.maxfps)) }
if global.choosesettings = 5 { x = lerp(x,camera_get_view_x(view_camera[0])+32,0.2 * (60 / global.maxfps)) }
scr_custombutton()

switch(language) {
default: text = "English" break;
case(1): text = "Deutsch" break;
case(2): text = "Français" break;
case(3): text = "Italiano" break;
case(4): text = "Español" break;
case(5): text = "Magyar" break;
}