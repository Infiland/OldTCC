//Hat Shop
RLselectedhat = selectedhat * -1

if keyboard_check_pressed(vk_enter) {
switch(RLselectedhat) {
//Exit
case(0): instance_destroy() break;	


//Graduation Hat
case(1): makehatshop(global.hat001,50,1) break;
//Cone Hat
case(2): makehatshop(global.hat002,50,2) break;
//Party Hat
case(3): makehatshop(global.hat003,75,3) break;
//Paper Hat
case(4): makehatshop(global.hat004,50,4) break;
//Top Hat
case(5): makehatshop(global.hat005,200,5) break;
//Golden Top Hat
case(6): makehatshop(global.hat006,1500,6) break;
//Reddie Top Hat
case(7): makehatshop(global.hat007,150,7)break;
//Christmas Hat
case(8): makehatshop(global.hat008,75,8) break;
//Witch Hat
case(9): makehatshop(global.hat009,75,9) break;
//Pumpkin Hat
case(10): makehatshop(global.hat010,75,10)break;
//Brown Hat
case(11): makehatshop(global.hat011,50,11) break;
//Gray Hat
case(12): makehatshop(global.hat012,50,12) break;
//White Hat
case(13): makehatshop(global.hat013,50,13) break;
//Sun Hat
case(14): makehatshop(global.hat014,50,14) break;
//Red Block Hat
case(15): makehatshop(global.hat015,50,15) break;
//Yellow Block Hat
case(16): makehatshop(global.hat016,50,16) break;
//Green Block Hat
case(17): makehatshop(global.hat017,50,17) break;
//Blue Block Hat
case(18): makehatshop(global.hat018,50,18) break;
//White Block Hat
case(19): makehatshop(global.hat019,50,19) break;
//Spike Hat
case(20): makehatshop(global.hat020,50,20) break;
//Invisible Spike Hat
case(21): makehatshop(global.hat021,75,21) break;
//Vertical Moving Spike Hat
case(22): makehatshop(global.hat022,75,22) break;
//Horizontal Moving Spike Hat
case(23): makehatshop(global.hat023,75,23) break;
//Hexagon Hat Icon
case(24): makehatshop(global.hat024,120,24) break;
//Bread Hat Icon
case(25): makehatshop(global.hat025,125,25) break;
//Soldier Hat Icon
case(26): makehatshop(global.hat026,75,26) break;
//Samurai Hat Icon
case(27): makehatshop(global.hat027,50,27) break;
//Red Beanie Hat Icon
case(28): makehatshop(global.hat028,75,28) break;
//Yellow Beanie Hat Icon
case(29): makehatshop(global.hat029,75,29) break;
//Green Beanie Hat Icon
case(30): makehatshop(global.hat030,75,30) break;
//Blue Beanie Hat Icon
case(31): makehatshop(global.hat031,75,31) break;
//Pirate Hat Icon
case(32): makehatshop(global.hat032,125,32) break;
	
}
}

//Pressing/Holding Left
if RLselectedhat != 0 {
if !keyboard_check(vk_right) {
if keyboard_check(vk_left) {
if press = 0 {
selectedhat += 1
press = 1
} else {
holdcooldown -= 1 * (60 / global.maxfps)
if holdcooldown < 0 {
selectedhat += 1
holdcooldown = 4
}
}

}
}
}

if keyboard_check_released(vk_left) {
press = 0
holdcooldown = 40
}

//Pressing/Holding Right
if RLselectedhat != limithat {
if !keyboard_check(vk_left) {
if keyboard_check(vk_right) {
if press = 0 {
selectedhat -= 1
press = 1
} else {
holdcooldown -= 1 * (60 / global.maxfps)
if holdcooldown < 0 {
selectedhat -= 1
holdcooldown = 4
}
}

}
}
}

if keyboard_check_released(vk_right) {
press = 0
holdcooldown = 40
}