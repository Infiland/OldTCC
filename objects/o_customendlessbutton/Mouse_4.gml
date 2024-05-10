if global.customERunlock = 0 {
if global.creditscurrency >= 500 {	
global.creditscurrency -= 500
audio_play_sound(snd_cashsound,0,0)
global.customERunlock = 1
locked = 0
scr_savestats()
}} else {
global.CESConfigure = 1 
instance_deactivate_object(o_endlessbutton)
instance_deactivate_object(o_oldendlessbutton)
instance_deactivate_object(o_customendlessbutton)
instance_activate_object(o_CERSettings)
if instance_exists(o_animatedtext) {
o_animatedtext.text = "Custom Endless Run"	
}
}
window_set_cursor(cr_default)