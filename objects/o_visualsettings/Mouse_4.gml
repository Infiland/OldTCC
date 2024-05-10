global.choosesettings = 1
if instance_exists(o_animatedtext) {
switch(global.language) {
default: o_animatedtext.text = "Change Visuals" break;	
case(1): o_animatedtext.text = "Grafiken ändern" break; //German
case(2): o_animatedtext.text = "Changement des Visuels" break; //French
case(3): o_animatedtext.text = "Impostazioni Grafiche" break; //Italian
case(4): o_animatedtext.text = "Cambiar Graficas" break; //Spanish
}}