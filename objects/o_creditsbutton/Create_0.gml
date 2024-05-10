/// @description Variables
declarecustombutton()
switch(global.language) {
default: text = "Credits" break;
case(1): text = "Abspann"
xscale = 0.65
yscale = 0.65
break; //German
case(2): text = "Crédits" break; //French
case(3): text = "Crediti" break; //Italian
case(4): text = "Creditos" break; //Spanish
case(5): text = "Fejlesztők"
xscale = 0.45
yscale = 0.45
break; //Hungary
}

global.deaths = 0
global.special = 0
global.pickup = 0
global.LES = 0;
global.xplayerLEpos = 0
global.yplayerLEpos = 0
global.talelistened = 0
image_speed = 0;