global.choosesettings = 2
if instance_exists(o_animatedtext) {
switch(global.language) {
default: o_animatedtext.text = "Change Audio" break;	
case(1): o_animatedtext.text = "Audio ändern" break; //German
case(2): o_animatedtext.text = "Audio" break; //French
case(3): o_animatedtext.text = "Impostazioni Audio" break; //Italian
case(4): o_animatedtext.text = "Configuracion del audio" break; //Spanish
}}