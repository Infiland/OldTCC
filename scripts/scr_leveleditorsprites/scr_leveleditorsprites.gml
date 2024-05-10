function scr_leveleditorsprites() {
if global.LEBuild = 1 {
switch(global.LES) {
case(0): sprite_index = s_playerred break; //Player
case(1): sprite_index = s_redblock break; //Red Block
case(2): sprite_index = s_yellowblock break; //Yellow Block
case(3): sprite_index = s_greenblock break; //Green Block
case(4): sprite_index = s_blueblock break; //Blue Block
case(5): sprite_index = s_whiteblock break;	//White Block
case(6): sprite_index = s_reditem break; //Red Collectable
case(7): sprite_index = s_yellowitem break;	//Yellow Collectable
case(8): sprite_index = s_greenitem break; //Green Collectable
case(9): sprite_index = s_blueitem break; //Blue Collectable
case(10): sprite_index = s_whiteitem break; //White Collectable
case(11): sprite_index = s_spike break; //Spike
case(12): sprite_index = s_spikeright break; //Spike Right
case(13): sprite_index = s_spikeleft break; //Spike Left
case(14): sprite_index = s_spiketop break; //Spike Top
case(15): sprite_index = s_spike //Inv Spike
image_alpha = 0.5
break;
case(16): sprite_index = s_spikeright; //Inv Spike Right
image_alpha = 0.5
break;
case(17): sprite_index = s_spikeleft; //Inv Spike Left
image_alpha = 0.5
break;
case(18): sprite_index = s_spiketop; //Inv Spike Top
image_alpha = 0.5
break;
case(19): image_speed = 0.2 * (60 / global.maxfps)
sprite_index = s_shootersleft; //Shooter Left
break;
case(20): image_speed = 0.2 * (60 / global.maxfps)
sprite_index = s_shootersright; //Shooter Right
break;
case(21): if global.oldGSsettings = 1 { sprite_index = s_gravity01_o } else { sprite_index = s_gravity01 } break; //GV0.1
case(22): if global.oldGSsettings = 1 { sprite_index = s_gravity05_o } else { sprite_index = s_gravity05 } break; //GV0.5
case(23): if global.oldGSsettings = 1 { sprite_index = s_gravity15_o } else { sprite_index = s_gravity15 } break; //GV1.5
case(24): if global.oldGSsettings = 1 { sprite_index = s_gravity25_o } else { sprite_index = s_gravity25 } break; //GV2.5
case(25): if global.oldGSsettings = 1 { sprite_index = s_speed5_o } else { sprite_index = s_speed5 } break; //SP5
case(26): if global.oldGSsettings = 1 { sprite_index = s_speed7_o } else { sprite_index = s_speed7 } break; //SP7
case(27): if global.oldGSsettings = 1 { sprite_index = s_speed10_o } else { sprite_index = s_speed10 } break; //SP10
case(28): if global.oldGSsettings = 1 { sprite_index = s_speed15_o } else { sprite_index = s_speed15 } break; //SP15
case(29): sprite_index = s_redspiral break; //Red Spiral
case(30): sprite_index = s_yellowspiral break; //Yellow Spiral
case(31): sprite_index = s_greenspiral break; //Green Spiral
case(32): sprite_index = s_bluespiral break; //Blue Spiral
case(33): sprite_index = s_whitespiral break; //White Spiral
case(34): sprite_index = s_specialcoinLE break; //Coin
case(35): sprite_index = s_redblockplatform break; //Red Moving Platform
case(36): sprite_index = s_yellowblockplatform break; //Yellow Moving Platform
case(37): sprite_index = s_greenblockplatform break; //Green Moving Platform
case(38): sprite_index = s_blueblockplatform break; //Blue Moving Platform
case(39): sprite_index = s_whiteblockplatform break; //White Moving Platform
case(40): sprite_index = s_portalpurpleopen break; //Portal Entrance
case(41): sprite_index = s_portalpurpleclose  break;//Portal Exit
case(42): sprite_index = s_redpassblock  break;//Red Pass Block
case(43): sprite_index = s_yellowpassblock break; //Yellow Pass Block
case(44): sprite_index = s_greenpassblock break; //Green Pass Block
case(45): sprite_index = s_bluepassblock break; //Blue Pass Block
case(46): sprite_index = s_whitepassblock break; //White Pass Block
case(47): sprite_index = s_torch break; //Torch
case(48): sprite_index = s_enemyidle break; //Enemy
case(49): sprite_index = s_onewayupblock break; //One Way Up Block
case(50): sprite_index = s_onewayrightblock break; //One Way Right Block
case(51): sprite_index = s_onewaydownblock break; //One Way Down Block
case(52): sprite_index = s_onewayleftblock break; //One Way Left Block
case(53): sprite_index = s_ladder break; //Ladder
case(54): sprite_index = s_shooterrocket break; //Rocket Launcher
case(55): sprite_index = s_shooterrocketright break; //Rocket Launcher Right
case(56): sprite_index = s_gun break; //Gun
case(57): sprite_index = s_iceblock break; //Ice
case(58): sprite_index = s_ammo break; //Ammo
case(59): sprite_index = s_ammoinfinite break; //Ammo Infinite
case(60): sprite_index = s_deathblock break; //Death Block
case(61): sprite_index = s_box break; //Box
case(62): if global.oldGSsettings = 1 {sprite_index = s_gravitylimit01_o} else {sprite_index = s_gravitylimit01} break; //Gravity 0.1 Limiter
case(63): if global.oldGSsettings = 1 {sprite_index = s_gravitylimit05_o} else {sprite_index = s_gravitylimit05} break; //Gravity 0.5 Limiter
case(64): if global.oldGSsettings = 1 {sprite_index = s_gravitylimit15_o} else {sprite_index = s_gravitylimit15} break; //Gravity 1.5 Limiter
case(65): if global.oldGSsettings = 1 {sprite_index = s_gravitylimit25_o} else {sprite_index = s_gravitylimit25} break; //Gravity 2.5 Limiter
case(66): if global.oldGSsettings = 1 {sprite_index = s_speedlimit5_o} else {sprite_index = s_speedlimit5} break; //Speed 5 Limiter
case(67): if global.oldGSsettings = 1 {sprite_index = s_speedlimit7_o} else {sprite_index = s_speedlimit7} break; //Speed 7 Limiter
case(68): if global.oldGSsettings = 1 {sprite_index = s_speedlimit10_o} else {sprite_index = s_speedlimit10} break; //Speed 10 Limiter
case(69): if global.oldGSsettings = 1 {sprite_index = s_speedlimit15_o} else {sprite_index = s_speedlimit15} break; //Speed 15 Limiter
case(70): sprite_index = s_lockedblock break; //Locked Block
case(71): sprite_index = s_unlockedblock break; //Unlocked Block
case(72): sprite_index = s_oxygenitem break; //Oxygen Item
case(73): 
image_blend = c_lime
sprite_index = s_spike //Vertical Spike
break;
case(74):
image_blend = c_lime
sprite_index = s_spikeright //Vertical Spike Right
break;
case(75):
image_blend = c_lime
sprite_index = s_spikeleft //Vertical Spike Left
break;
case(76):
image_blend = c_lime
sprite_index = s_spiketop //Vertical Spike Top
break;
case(77): 
image_blend = c_yellow
sprite_index = s_spike //Horizontal Spike
break;
case(78):
image_blend = c_yellow
sprite_index = s_spikeright //Horizontal Spike Right
break;
case(79):
image_blend = c_yellow
sprite_index = s_spikeleft //Horizontal Spike Left
break;
case(80):
image_blend = c_yellow
sprite_index = s_spiketop //Horizontal Spike Top
break;
case(81): sprite_index = s_doublejumpitem
image_alpha = 0.5
break; //Double Jump Item
case(82): sprite_index = s_redblock 
image_alpha = 0.5
break; //Red Block
case(83): sprite_index = s_yellowblock 
image_alpha = 0.5
break; //Yellow Block
case(84): sprite_index = s_greenblock 
image_alpha = 0.5
break; //Green Block
case(85): sprite_index = s_blueblock 
image_alpha = 0.5
break; //Blue Block
case(86): sprite_index = s_whiteblock 
image_alpha = 0.5
break;	//White Block
}
}
if global.LEBuild = 2 {
switch(global.LES) {
case(0): sprite_index = s_redblockbackground; //Red Block Background
break;
case(1): sprite_index = s_yellowblockbackground;  //Yellow Block Background
break;
case(2): sprite_index = s_greenblockbackground;  //Green Block Background
break;
case(3): sprite_index = s_blueblockbackground;  //Blue Block Background
break;
case(4): sprite_index = s_whiteblockbackground;  //White Block Background
break;
case(5): sprite_index = s_iceblockbackground;  //Ice Block Background
break;
case(6): sprite_index = s_deathblockbackground;  //Death Block Background
break;
case(7): sprite_index = s_boxbackground;  //Box Background
break;
case(8): sprite_index = s_redblockbackgroundslope;
image_index = global.LEBlockBackgroundRotation //Red Block Background Slope
break;
case(9): sprite_index = s_yellowblockbackgroundslope;
image_index = global.LEBlockBackgroundRotation //Yellow Block Background Slope
break;
case(10): sprite_index = s_greenblockbackgroundslope;
image_index = global.LEBlockBackgroundRotation //Green Block Background Slope
break;
case(11): sprite_index = s_blueblockbackgroundslope;
image_index = global.LEBlockBackgroundRotation //Blue Block Background Slope
break;
case(12): sprite_index = s_whiteblockbackgroundslope;
image_index = global.LEBlockBackgroundRotation //White Block Background Slope
break;
case(13): sprite_index = s_iceblockbackgroundslope;
image_index = global.LEBlockBackgroundRotation //Ice Block Background Slope
break;
case(14): sprite_index = s_deathblockbackgroundslope;
image_index = global.LEBlockBackgroundRotation //Death Block Background Slope
break;
case(15): sprite_index = s_boxblockbackgroundslope;
image_index = global.LEBlockBackgroundRotation //Box Block Background Slope
break;
}
}
image_blend = c_white
}