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