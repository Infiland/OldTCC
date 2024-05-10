/// @description Variables
declarecustombutton()
switch(global.language) {
default: text = "Credits" break;
case(1): text = "Abspann"
xMULTI = 0.9
yMULTI = 0.9
break; //German
case(2): text = "Crédits" break; //French
case(3): text = "Crediti" break; //Italian
case(4): text = "Creditos" break; //Spanish
case(5): text = "Fejlesztők"
xMULTI = 0.8
yMULTI = 0.8
break; //Hungary
}

global.special = 0
global.pickup = 0
global.LES = 0;
global.xplayerLEpos = 0
global.yplayerLEpos = 0
global.talelistened = 0
image_speed = 0;