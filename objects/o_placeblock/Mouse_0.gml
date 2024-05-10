if instance_exists(o_leveleditorleaveask) { exit }

if global.LEMode = 1 {

if instance_exists(o_namelevelLE) { exit }

if sprite_index != s_cannotplace {
if x < room_width {
if x >= 0 {
if y < room_width {
if y >= 64 {
if !instance_exists(o_LETutorial) {
global.LEVerified = 0
if global.LEBuild = 1 {
switch(global.LES) {
case(0):
if !instance_position(x,y,o_playerspawner) {	
if !instance_exists(o_playerspawner) {
instance_create(x,y,o_playerspawner)
} else {
instance_destroy(o_playerspawner)
instance_create(x,y,o_playerspawner)
}
	}
break;
case(1): instance_create(x,y,o_redblock) break;
case(2): instance_create(x,y,o_yellowblock) break;
case(3): instance_create(x,y,o_greenblock) break;
case(4): instance_create(x,y,o_blueblock) break;
case(5): instance_create(x,y,o_whiteblock) break;
case(6): instance_create(x,y,o_reditemLE) break;
case(7): instance_create(x,y,o_yellowitemLE) break;
case(8): instance_create(x,y,o_greenitemLE) break;
case(9): instance_create(x,y,o_blueitemLE) break;
case(10): instance_create(x,y,o_whiteitemLE) break;
case(11): instance_create(x,y,o_spike) break;
case(12): instance_create(x,y,o_spikeright) break;
case(13): instance_create(x,y,o_spikeleft) break;
case(14): instance_create(x,y,o_spiketop) break;
case(15): instance_create(x,y,o_invspike) break;
case(16): instance_create(x,y,o_invspikeright) break;
case(17): instance_create(x,y,o_invspikeleft) break;
case(18): instance_create(x,y,o_invspiketop) break;
case(19): instance_create(x,y,o_shooter) break;
case(20): instance_create(x,y,o_shooterright) break;
case(21): instance_create(x,y,o_gravity01LE) break;
case(22): instance_create(x,y,o_gravity05LE) break;
case(23): instance_create(x,y,o_gravity15LE) break;
case(24): instance_create(x,y,o_gravity25LE) break;
case(25): instance_create(x,y,o_speed5LE) break;
case(26): instance_create(x,y,o_speed7LE) break;
case(27): instance_create(x,y,o_speed10LE) break;
case(28): instance_create(x,y,o_speed15LE) break;
case(29): instance_create(x,y,o_redspiralLE) break;
case(30): instance_create(x,y,o_yellowspiralLE) break;
case(31): instance_create(x,y,o_greenspiralLE) break;
case(32): instance_create(x,y,o_bluespiralLE) break;
case(33): instance_create(x,y,o_whitespiralLE) break;
case(34): instance_create(x,y,o_specialcoinLE) break;
case(35): instance_create(x,y,o_redblockmoveLE) break;
case(36): instance_create(x,y,o_yellowblockmoveLE) break;
case(37): instance_create(x,y,o_greenblockmoveLE) break;
case(38): instance_create(x,y,o_blueblockmoveLE) break;
case(39): instance_create(x,y,o_whiteblockmoveLE) break;
case(40):
instance_destroy(o_portalpurpleopen)	
instance_create(x,y,o_portalpurpleopen)
break;
case(41):
instance_destroy(o_portalpurpleclosed)	
instance_create(x,y,o_portalpurpleclosed)
break;
case(42): instance_create(x,y,o_redpassblock) break;
case(43): instance_create(x,y,o_yellowpassblock) break;
case(44): instance_create(x,y,o_greenpassblock) break;
case(45): instance_create(x,y,o_bluepassblock) break;
case(46): instance_create(x,y,o_whitepassblock) break;
case(47): instance_create(x,y,o_torchLE) break;
case(48): instance_create(x,y,o_enemyplayerLE) break;
case(49): 
	instance_create(x,y,o_onewayupblock)
	instance_create(x,y,o_blockcheck2)
break;
case(50): instance_create(x,y,o_onewayrightblock) break;
case(51): 
	instance_create(x,y,o_onewaydownblock)
	instance_create(x,y,o_blockcheck2)
	break;
case(52): instance_create(x,y,o_onewayleftblock) break;
case(53): instance_create(x,y,o_ladder) break;
case(54): instance_create(x,y,o_rocketlauncher) break;
case(55): instance_create(x,y,o_rocketlauncherright) break;
case(56): instance_create(x,y,o_gunLE) break;
case(57): instance_create(x,y,o_iceblock) break;
case(58): instance_create(x,y,o_ammoLE) break;
case(59): instance_create(x,y,o_ammoinfiniteLE) break;
case(60): instance_create(x,y,o_deathblock) break;
case(61): instance_create(x,y,o_boxLE) break;
case(62): instance_create(x,y,o_gravitylimit01) break;
case(63): instance_create(x,y,o_gravitylimit05) break;
case(64): instance_create(x,y,o_gravitylimit15) break;
case(65): instance_create(x,y,o_gravitylimit25) break;
case(66): instance_create(x,y,o_speedlimit5) break;
case(67): instance_create(x,y,o_speedlimit7) break;
case(68): instance_create(x,y,o_speedlimit10) break;
case(69): instance_create(x,y,o_speedlimit15) break;
case(70): instance_create(x,y,o_lockedblock) break;
case(71): instance_create(x,y,o_unlockedblock) break;
case(72): instance_create(x,y,o_oxygenitemLE) break;
case(73): instance_create(x,y,o_spikemovingdownupLE) break;
case(74): instance_create(x,y,o_spikemovingleftrightLE) break;
case(75): instance_create(x,y,o_spikemovingrightleftLE) break;
case(76): instance_create(x,y,o_spikemovingupdownLE) break;
case(77): instance_create(x,y,o_HspikemovingupLE) break;
case(78): instance_create(x,y,o_HspikemovingrightLE) break;
case(79): instance_create(x,y,o_HspikemovingleftLE) break;
case(80): instance_create(x,y,o_HspikemovingdownLE) break;
case(81): instance_create(x,y,o_doublejumpitemLE) break;
case(82): instance_create(x,y,o_invisibleredblock) break;
case(83): instance_create(x,y,o_invisibleyellowblock) break;
case(84): instance_create(x,y,o_invisiblegreenblock) break;
case(85): instance_create(x,y,o_invisibleblueblock) break;
case(86): instance_create(x,y,o_invisiblewhiteblock) break;
}
}
if global.LEBuild = 2 {
if !instance_position(x,y,o_redblock) or !instance_position(x,y,o_yellowblock) or !instance_position(x,y,o_greenblock) or !instance_position(x,y,o_blueblock) or !instance_position(x,y,o_whiteblock) or !instance_position(x,y,o_iceblock) or !instance_position(x,y,o_boxLE) or !instance_position(x,y,o_boxwithammoLE) or !instance_position(x,y,o_boxwithinfiniteammoLE) or !instance_position(x,y,o_redblockbackground) or !instance_position(x,y,o_yellowblockbackground) or !instance_position(x,y,o_greenblockbackground) or !instance_position(x,y,o_blueblockbackground) or !instance_position(x,y,o_whiteblockbackground) or !instance_position(x,y,o_iceblockbackground) or !instance_position(x,y,o_deathblockbackground) or !instance_position(x,y,o_boxbackground) or !instance_position(x,y,o_redblockbackgroundslope) or !instance_position(x,y,o_yellowblockbackgroundslope) or !instance_position(x,y,o_greenblockbackgroundslope) or !instance_position(x,y,o_blueblockbackgroundslope) or !instance_position(x,y,o_whiteblockbackgroundslope) or !instance_position(x,y,o_iceblockbackgroundslope) or !instance_position(x,y,o_deathblockbackgroundslope){
switch(global.LES) {
case(0): instance_create(x,y,o_redblockbackground) break;
case(1): instance_create(x,y,o_yellowblockbackground) break;
case(2): instance_create(x,y,o_greenblockbackground) break;
case(3): instance_create(x,y,o_blueblockbackground) break;
case(4): instance_create(x,y,o_whiteblockbackground) break;
case(5): instance_create(x,y,o_iceblockbackground) break;
case(6): instance_create(x,y,o_deathblockbackground) break;
case(7): instance_create(x,y,o_boxbackground) break;
case(8): instance_create(x,y,o_redblockbackgroundslope) break;
case(9): instance_create(x,y,o_yellowblockbackgroundslope) break;
case(10): instance_create(x,y,o_greenblockbackgroundslope) break;
case(11): instance_create(x,y,o_blueblockbackgroundslope) break;
case(12): instance_create(x,y,o_whiteblockbackgroundslope) break;
case(13): instance_create(x,y,o_iceblockbackgroundslope) break;
case(14): instance_create(x,y,o_deathblockbackgroundslope) break;
case(15): instance_create(x,y,o_boxblockbackgroundslope) break;
}
}

}
}
}
}
}
}
}

}