/// @description Variables
if global.challenges != 1749610 {
instance_destroy()
}

declarecustombutton()
switch(global.language) {
default: text = "Get FULL version!" break;
case(1): text = "Vollversion Kaufen" break;
case(4): text = "Consigue la version completa" break;
case(5): text = "Teljes verzió megszerzése" break;
}

scr_loadsettings()
image_speed = 0;
image_index = 0