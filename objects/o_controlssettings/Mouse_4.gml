global.choosesettings = 3
if instance_exists(o_animatedtext) {
switch(global.language) {
default: o_animatedtext.text = "Change Controls" break;	
case(1): o_animatedtext.text = "Steuerung ändern" break; //German
case(2): o_animatedtext.text = "Contrôles" break; //French
case(3): o_animatedtext.text = "Configurazione Controlli" break; //Italian
case(4): o_animatedtext.text = "Configuracion de controles" break; //Spanish
}}