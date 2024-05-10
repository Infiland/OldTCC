draw_set_font(fnt_cool)
draw_set_alpha(1)
if global.LEMode = 2 {
image_alpha = 0
draw_set_font(fnt_death)
draw_text(700,22,"Can't build in 'Play Mode'")	
draw_set_alpha(0)
}
if global.LEBuild = 1 {
draw_text(835,15,string(global.LES + 1) + " / 87")
switch(global.LES) {
case(0): draw_text(xtext,ytext,"Player") break;
case(1): draw_text(xtext,ytext,"Red Block") break;
case(2): draw_text(xtext,ytext,"Yellow Block") break;
case(3): draw_text(xtext,ytext,"Green Block") break;
case(4): draw_text(xtext,ytext,"Blue Block") break;
case(5): draw_text(xtext,ytext,"White Block") break;
case(6): draw_text(xtext,ytext,"Red Pickup") break;
case(7): draw_text(xtext,ytext,"Yellow Pickup") break;
case(8): draw_text(xtext,ytext,"Green Pickup") break;
case(9): draw_text(xtext,ytext,"Blue Pickup") break;
case(10): draw_text(xtext,ytext,"White Pickup") break;
case(11): draw_text(xtext,ytext,"Spike") break;
case(12): draw_text(xtext,ytext,"Spike Right") break;
case(13): draw_text(xtext,ytext,"Spike Left") break;
case(14): draw_text(xtext,ytext,"Spike Top") break;
case(15): draw_text(xtext,ytext,"Invinsible Spike") break;
case(16): draw_text(xtext,ytext,"Invinsible Spike Right") break;
case(17): draw_text(xtext,ytext,"Invinsible Spike Left") break;
case(18): draw_text(xtext,ytext,"Invinsible Spike Top") break;
case(19): draw_text(xtext,ytext,"Cannon L") break;
case(20): draw_text(xtext,ytext,"Cannon R") break;
case(21): draw_text(xtext,ytext,"Ultra-Low Gravity") break;
case(22): draw_text(xtext,ytext,"Low Gravity") break;
case(23): draw_text(xtext,ytext,"Normal Gravity") break;
case(24): draw_text(xtext,ytext,"High Gravity") break;
case(25): draw_text(xtext,ytext,"Slow Speed") break;
case(26): draw_text(xtext,ytext,"Normal Speed") break;
case(27): draw_text(xtext,ytext,"Fast Speed") break;
case(28): draw_text(xtext,ytext,"Lightning Speed") break;
case(29): draw_text(xtext,ytext,"Red Spiral") break;
case(30): draw_text(xtext,ytext,"Yellow Spiral") break;
case(31): draw_text(xtext,ytext,"Green Spiral") break;
case(32): draw_text(xtext,ytext,"Blue Spiral") break;
case(33): draw_text(xtext,ytext,"White Spiral") break;
case(34): draw_text(xtext,ytext,"Coin") break;
case(35): draw_text(xtext,ytext,"Red Moving Platform") break;
case(36): draw_text(xtext,ytext,"Yellow Moving Platform") break;
case(37): draw_text(xtext,ytext,"Green Moving Platform") break;
case(38): draw_text(xtext,ytext,"Blue Moving Platform") break;
case(39): draw_text(xtext,ytext,"White Moving Platform") break;
case(40): draw_text(xtext,ytext,"Portal Entrance") break;
case(41): draw_text(xtext,ytext,"Portal Exit") break;
case(42): draw_text(xtext,ytext,"Red Pass Block") break;
case(43): draw_text(xtext,ytext,"Yellow Pass Block") break;
case(44): draw_text(xtext,ytext,"Green Pass Block") break;
case(45): draw_text(xtext,ytext,"Blue Pass Block") break;
case(46): draw_text(xtext,ytext,"White Pass Block") break;
case(47): draw_text(xtext,ytext,"Torch") break;
case(48): draw_text(xtext,ytext,"Troop") break;
case(49): draw_text(xtext,ytext,"One Way Up Block") break;
case(50): draw_text(xtext,ytext,"One Way Right Block") break;
case(51): draw_text(xtext,ytext,"One Way Down Block") break;
case(52): draw_text(xtext,ytext,"One Way Left Block") break;
case(53): draw_text(xtext,ytext,"Ladder") break;
case(54): draw_text(xtext,ytext,"Rocket Cannon L") break;
case(55): draw_text(xtext,ytext,"Rocket Cannon R") break;
case(56): draw_text(xtext,ytext,"Gun") break;
case(57): draw_text(xtext,ytext,"Ice Block") break;
case(58): draw_text(xtext,ytext,"Ammo") break;
case(59): draw_text(xtext,ytext,"Infinite Ammo") break;
case(60): draw_text(xtext,ytext,"Death Block") break;
case(61): draw_text(xtext,ytext,"Box") break;
case(62): draw_text(xtext,ytext,"Ultra-Low G Limiter") break;
case(63): draw_text(xtext,ytext,"Low Gravity Limiter") break;
case(64): draw_text(xtext,ytext,"Normal Gravity Limiter") break;
case(65): draw_text(xtext,ytext,"High Gravity Limiter") break;
case(66): draw_text(xtext,ytext,"Slow Speed Limiter") break;
case(67): draw_text(xtext,ytext,"Normal Speed Limiter") break;
case(68): draw_text(xtext,ytext,"Fast Speed Limiter") break;
case(69): draw_text(xtext,ytext,"Lightning Speed Limiter") break;
case(70): draw_text(xtext,ytext,"Locked Block") break;
case(71): draw_text(xtext,ytext,"Unlocked Block") break;
case(72): draw_text(xtext,ytext,"Oxygen Replenisher") break;
case(73): draw_text(xtext,ytext,"Vertical Spike") break;
case(74): draw_text(xtext,ytext,"Vertical Spike Right") break;
case(75): draw_text(xtext,ytext,"Vertical Spike Left") break;
case(76): draw_text(xtext,ytext,"Vertical Spike Top") break;
case(77): draw_text(xtext,ytext,"Horizontal Spike") break;
case(78): draw_text(xtext,ytext,"Horizontal Spike Right") break;
case(79): draw_text(xtext,ytext,"Horizontal Spike Left") break;
case(80): draw_text(xtext,ytext,"Horizontal Spike Top") break;
case(81): draw_text(xtext,ytext,"Double Jump") break;
case(82): draw_text(xtext,ytext,"Invisible Red Block") break;
case(83): draw_text(xtext,ytext,"Invisible Yellow Block") break;
case(84): draw_text(xtext,ytext,"Invisible Green Block") break;
case(85): draw_text(xtext,ytext,"Invisible Blue Block") break;
case(86): draw_text(xtext,ytext,"Invisible White Block") break;

}
}
if global.LEBuild = 2 {
draw_text(835,15,string(global.LES + 1) + " / 16")
switch(global.LES) {
case(0): draw_text(xtext,ytext,"Red Block") break;
case(1): draw_text(xtext,ytext,"Yellow Block") break;
case(2): draw_text(xtext,ytext,"Green Block") break;
case(3): draw_text(xtext,ytext,"Blue Block") break;
case(4): draw_text(xtext,ytext,"White Block") break;
case(5): draw_text(xtext,ytext,"Ice Block") break;
case(6): draw_text(xtext,ytext,"Death Block") break;
case(7): draw_text(xtext,ytext,"Box") break;
case(8): draw_text(xtext,ytext,"Red Block Slope") break;
case(9): draw_text(xtext,ytext,"Yellow Block Slope") break;
case(10): draw_text(xtext,ytext,"Green Block Slope") break;
case(11): draw_text(xtext,ytext,"Blue Block Slope") break;
case(12): draw_text(xtext,ytext,"White Block Slope") break;
case(13): draw_text(xtext,ytext,"Ice Block Slope") break;
case(14): draw_text(xtext,ytext,"Death Block Slope") break;
case(15): draw_text(xtext,ytext,"Box Slope") break;

}
}

if global.LEBuild = 3 {
draw_text(835,15,string(global.LES + 1) + " / 2")
switch(global.LES) {
case(0): draw_text(xtext,ytext,"Water") break;
case(1): draw_text(xtext,ytext,"Lava") break;
}
}