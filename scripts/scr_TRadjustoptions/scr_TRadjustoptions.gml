function scr_TRadjustoptions(){
if instance_exists(o_animatedtext) {
	switch(global.language) {
	default: o_animatedtext.text = "Adjust Options" break;
	case(1): o_animatedtext.text = "Optionen Anpassen" break; //German
	case(2): o_animatedtext.text = "Ajuster les Options" break; //French
	case(3): o_animatedtext.text = "Aggiusta Opzioni" break; //Italian
	case(4): o_animatedtext.text = "Ajustas opciones" break; //Spanish
 	}}
}