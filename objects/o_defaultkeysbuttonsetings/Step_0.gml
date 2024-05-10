if global.choosesettings != 3 { x = lerp(x,camera_get_view_x(view_camera[0])-256,0.2 * (60 / global.maxfps)) }
if global.choosesettings = 3 { x = lerp(x,camera_get_view_x(view_camera[0])+32,0.2 * (60 / global.maxfps)) }

switch(global.language) {
default: text = "Default Controls"
xscale = 0.4
yscale = 0.4
break;
case(1): text = "Standardtastenbelegung" break;
xscale = 0.3
yscale = 0.3
case(2): text = "Contrôles par défaut" 
xscale = 0.35
yscale = 0.35
break; //French
case(3): text = "Controlli Predefiniti" 
xscale = 0.35
yscale = 0.35
break; //Italian
case(4): text = "Controles por defecto"
xscale = 0.35
yscale = 0.35
break; //Spanish
case(5): text = "Alapbeállítások"
xscale = 0.35
yscale = 0.35
break; //Magyar
}