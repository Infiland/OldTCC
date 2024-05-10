if ingame = true {
if instance_exists(o_settingspausemenu) {
x = lerp(x,vx + 896,0.2)
y = lerp(y,vy + 32,0.2)
xscale = 0.5
yscale = 0.5

switch(global.language) {
default: text = "Return" break;
case(1): text = "Zurück" break;
case(2): text = "Retour" break;
case(3): text = "Indietro" break;
case(4): text = "Volver" break;
case(5): text = "Vissza" break;
}

} else {
x = oldx
y = oldy
text = "Go to\nMain Menu"
xscale = 0.3
yscale = 0.3
}}

if room = r_leveleditor {
x = camera_get_view_x(view_camera[0]) + 15
y = camera_get_view_y(view_camera[0]) + 9
}