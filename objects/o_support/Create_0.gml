/// @description Variables
declarecustombutton()
switch(global.language) {
default: text = "Support the developer!" break;
case(1): 
wide = 500
text = "Den Entwickler unterstützen" break;
case(2): text = "Soutenir le développeur" break;
case(3): text = "Supporta lo Sviluppatore" break;
case(4): text = "Apoya al desarollador" break;
}

scr_loadsettings()
image_speed = 0;
image_index = 0