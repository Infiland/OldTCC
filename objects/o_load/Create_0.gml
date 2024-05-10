if global.challenges = 1749610 {
instance_destroy()
}

declarecustombutton()
switch(global.language) {
default: text = "Load" break;
case(1): text = "Laden" break; //German
case(2): text = "Chargement"
xMULTI = 0.6
yMULTI = 0.6
break; //French
case(3): text = "Carica" break; //Italian
case(4): text = "Cargar" break; //Spanish
}

global.deaths = 0
global.special = 0
global.pickup = 0
image_speed = 0;
var directory = working_directory + "/Save Files/"
if file_exists(directory + "SaveFile.sav") {
image_alpha = 1	
}
else { image_alpha = 0.5 }