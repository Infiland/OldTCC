if image_alpha != 0.5 {
global.choosesettings = 4
if instance_exists(o_animatedtext) {
switch(global.language) {
default: o_animatedtext.text = "Enable/Disable Cheats" break;	
case(1): o_animatedtext.text = "Cheats aktivieren/deaktivieren" break; //German
case(2): o_animatedtext.text = "Activer/Désactiver les tricheries" break; //French
case(3): o_animatedtext.text = "Attiva/Disattiva Trucchi" break; //Italian
case(4): o_animatedtext.text = "Actiar/Desactivar trucos" break; //Spanish
}}
}