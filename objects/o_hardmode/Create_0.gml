/// @description Variables
declarecustombutton()
switch(global.language) {
default: text = "Hard Mode" break;
case(1): text = "Schwerer\nModus" break;
case(2): text = "Mode\ndifficile" break;
case(3): text = "Modalità\nDifficile"
case(4): text = "Modo\nDificil"
case(5): text = "Kemény Mód"
}

scr_loadhardmode()
global.deaths = 0
global.special = 0
global.pickup = 0
global.LES = 0;
global.talelistened = 0
image_speed = 0;
if global.hardmodeunlock < 1 { locked = 1 }