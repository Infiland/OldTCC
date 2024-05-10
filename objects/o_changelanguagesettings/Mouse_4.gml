global.language = language
switch(global.language) {
default: if instance_exists(o_animatedtext) { o_animatedtext.text = "Change Languages" } break;
case(1): if instance_exists(o_animatedtext) { o_animatedtext.text = "Sprache Wechseln" } break; //German
case(2): if instance_exists(o_animatedtext) { o_animatedtext.text = "Sprache Wechseln" } break; //French
case(3): if instance_exists(o_animatedtext) { o_animatedtext.text = "Cambia Lingua" } break; //Italian
case(4): if instance_exists(o_animatedtext) { o_animatedtext.text = "Cambiar Idioma" } break; //Spanish
case(5): if instance_exists(o_animatedtext) { o_animatedtext.text = "Nyelv megváltoztatása" } break; //Hungary

}
scr_savesettings()