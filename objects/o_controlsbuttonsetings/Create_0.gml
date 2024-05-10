controls = 0
globalvar editcontrols;
editcontrols = -1
drawtext = ""
drawcontrols = ""

switch(controls) {
case(0): controlschoose = global.controlsmoveright break;
case(1): controlschoose = global.controlsmoveleft break;
case(2): controlschoose = global.controlsjump break;
case(3): controlschoose = global.controlsinteract break;
case(4): controlschoose = global.controlsskiplevel break;
case(5): controlschoose = global.controlsrestart break;
}
ischanging = false
depth = -1000000000