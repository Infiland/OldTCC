if interactcontrols = 0 {
key_interact = keyboard_check_pressed(ord(global.controlsinteract)) || (gamepad_button_check_pressed(4,gp_shoulderr)) //|| keyboard_check_pressed(ord("S"));
} else { key_interact = keyboard_check_pressed(global.controlsinteract) }

if instance_exists(o_player) {
if distance_to_object(o_player) < 70 {
if o_player.y - 10 <= ystart {
y = lerp(y,ystart - 10,0.12)
caninteract = 1
}
} else { y = lerp(y,ystart,0.12)
caninteract = 0
interacted = 0
textnumber = irandom_range(1,15)
instance_destroy(o_creditscounter)
instance_destroy(o_hatshopmenu)
	}

if distance_to_object(o_player) < 20 {
image_index = 0	
} else {
if o_player.x < x { image_index = 1 }
if o_player.x > x { image_index = 2 }
}

} else { y = lerp(y,ystart,0.12) }

if caninteract = 1 {
if key_interact {
	if !steam_get_achievement("HAT_MERCHANT") { steam_set_achievement("HAT_MERCHANT") }
	interacted = 1
	}
}

//Randomized Text
switch(textnumber) {
case(1): text = "Alright friend, choose!" break;
case(2): text = "These will look good on you." break;
case(3): text = "Alright, take a look." break;
case(4): text = "Buy something, will ya!" break;
case(5): text = "We have a variety of hats!" break;
case(6): text = "You have credits to use, I have hats to sell." break;
case(7): text = "You look rich, I'll give you hats in return." break;
case(8): text = "Selling hats, only above 50 credits!" break;
case(9): text = "You can get hats only from me in this universe." break;
case(10): text = "Get something to wear, will ya!" break;
case(11): text = "Tango's the name and hat selling's my game!" break;
case(12): text = "I personally like my tophat!" break;
case(13): text = "I don't need your coins, I need credits!" break;
case(14): text = "It's yours my friend, as long as you have enough credits." break;
case(15): text = "I've heard there's fake blocks all over levels. But I can't remember where they are." break;
}