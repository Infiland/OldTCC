if global.customizeselect = 1 {
switch(global.skinselected) {
//Normal
case(0): x = lerp(x,o_normalskinbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_normalskinbutton.y,0.1  * (60 / global.maxfps)) break;
//Kaizo
case(1): x = lerp(x,o_kaizoskinbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_kaizoskinbutton.y,0.1  * (60 / global.maxfps)) break;
//Mad
case(2): x = lerp(x,o_madskinbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_madskinbutton.y,0.1  * (60 / global.maxfps)) break;
//Blind
case(3): x = lerp(x,o_blindskinbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_blindskinbutton.y,0.1  * (60 / global.maxfps)) break;
//Sad
case(4): x = lerp(x,o_sadskinbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_sadskinbutton.y,0.1  * (60 / global.maxfps)) break;
//Block
case(5): x = lerp(x,o_blockskinbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_blockskinbutton.y,0.1  * (60 / global.maxfps)) break;
//HD
case(6): x = lerp(x,o_hdskinbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_hdskinbutton.y,0.1  * (60 / global.maxfps)) break;
//Rewarded
case(7): x = lerp(x,o_rewardedskinbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_rewardedskinbutton.y,0.1  * (60 / global.maxfps)) break;
//Angry
case(8): x = lerp(x,o_angryskinbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_angryskinbutton.y,0.1  * (60 / global.maxfps)) break;
//Cool
case(9): x = lerp(x,o_coolskinbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_coolskinbutton.y,0.1  * (60 / global.maxfps)) break;
//Dark Knight
case(10): x = lerp(x,o_darkknightskinbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_darkknightskinbutton.y,0.1  * (60 / global.maxfps)) break;
//Rich
case(11): x = lerp(x,o_richskinbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_richskinbutton.y,0.1  * (60 / global.maxfps)) break;
//Gold
case(12): x = lerp(x,o_goldskinbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_goldskinbutton.y,0.1  * (60 / global.maxfps)) break;
//Frozen
case(13): x = lerp(x,o_frozenskinbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_frozenskinbutton.y,0.1  * (60 / global.maxfps)) break;
//Kinda Dead
case(14): x = lerp(x,o_kindadeadskinbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_kindadeadskinbutton.y,0.1  * (60 / global.maxfps)) break;
//Corona
case(15): x = lerp(x,o_coronaskinbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_coronaskinbutton.y,0.1  * (60 / global.maxfps)) break;
//Canadian
case(16): x = lerp(x,o_canadianskinbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_canadianskinbutton.y,0.1  * (60 / global.maxfps)) break;
//Hazardous
case(17): x = lerp(x,o_hazardousskinbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_hazardousskinbutton.y,0.1  * (60 / global.maxfps)) break;
//Baby
case(18): x = lerp(x,o_babyskinbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_babyskinbutton.y,0.1  * (60 / global.maxfps)) break;
//Hexagon
case(19): x = lerp(x,o_hexagonskinbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_hexagonskinbutton.y,0.1  * (60 / global.maxfps)) break;
//Tuxedo
case(20): x = lerp(x,o_tuxedoskinbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_tuxedoskinbutton.y,0.1  * (60 / global.maxfps)) break;
//Animated
case(21): x = lerp(x,o_animatedskinbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_animatedskinbutton.y,0.1  * (60 / global.maxfps)) break;
//Water
case(22): x = lerp(x,o_waterskinbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_waterskinbutton.y,0.1  * (60 / global.maxfps)) break;
//ForsenE
case(23): x = lerp(x,o_forseneskinbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_forseneskinbutton.y,0.1  * (60 / global.maxfps)) break;
//Red Ball
case(24): x = lerp(x,o_redballskinbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_redballskinbutton.y,0.1  * (60 / global.maxfps)) break;
//Bomber
case(25): x = lerp(x,o_bomberskinbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_bomberskinbutton.y,0.1  * (60 / global.maxfps)) break;
//Hitbox
case(26): x = lerp(x,o_hitboxskinbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_hitboxskinbutton.y,0.1  * (60 / global.maxfps)) break;
//Metallic
case(27): x = lerp(x,o_metallicskinbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_metallicskinbutton.y,0.1  * (60 / global.maxfps)) break;
//Monocle
case(28): x = lerp(x,o_monocleskinbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_monocleskinbutton.y,0.1  * (60 / global.maxfps)) break;
//Japanese
case(29): x = lerp(x,o_japaneseskinbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_japaneseskinbutton.y,0.1  * (60 / global.maxfps)) break;
//Googly
case(30): x = lerp(x,o_googlyskinbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_googlyskinbutton.y,0.1  * (60 / global.maxfps)) break;
//Upside Down
case(31): x = lerp(x,o_upsidedownskinbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_upsidedownskinbutton.y,0.1  * (60 / global.maxfps)) break;
//Spiral
case(32): x = lerp(x,o_spiralskinbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_spiralskinbutton.y,0.1  * (60 / global.maxfps)) break;
//Heart
case(33): x = lerp(x,o_heartskinbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_heartskinbutton.y,0.1  * (60 / global.maxfps)) break;
//Clock
case(34): x = lerp(x,o_clockskinbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_clockskinbutton.y,0.1  * (60 / global.maxfps)) break;
//Invisible
case(35): x = lerp(x,o_invisibleskinbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_invisibleskinbutton.y,0.1  * (60 / global.maxfps)) break;
//Arrow
case(36): x = lerp(x,o_arrowskinbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_arrowskinbutton.y,0.1  * (60 / global.maxfps)) break;
//Spike
case(37): x = lerp(x,o_spikeskinbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_spikeskinbutton.y,0.1  * (60 / global.maxfps)) break;
//Split
case(38): x = lerp(x,o_splitskinbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_splitskinbutton.y,0.1  * (60 / global.maxfps)) break;
}}


if global.customizeselect = 1 {
if global.skinschange = 1 {
sprite_index = s_skinselectlegendary
} else { sprite_index = s_skinselect }
} else { sprite_index = s_skinselect }

if global.customizeselect = 2 {
sprite_index = s_skinselect
switch(global.hatselected) {
//Unequiped
case(0): x = lerp(x,o_unequipedhatbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_unequipedhatbutton.y,0.1  * (60 / global.maxfps)) break;
//Graduation
case(1): x = lerp(x,o_graduationhatbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_graduationhatbutton.y,0.1  * (60 / global.maxfps)) break;
//Cone
case(2): x = lerp(x,o_conehatbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_conehatbutton.y,0.1  * (60 / global.maxfps)) break;
//Party
case(3): x = lerp(x,o_partyhatbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_partyhatbutton.y,0.1  * (60 / global.maxfps)) break;
//Paper
case(4): x = lerp(x,o_paperhatbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_paperhatbutton.y,0.1  * (60 / global.maxfps)) break;
//Top Hat
case(5): x = lerp(x,o_tophatbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_tophatbutton.y,0.1  * (60 / global.maxfps)) break;
//Yellow Top Hat
case(6): x = lerp(x,o_yellowtophatbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_yellowtophatbutton.y,0.1  * (60 / global.maxfps)) break;
//Reddie
case(7): x = lerp(x,o_reddiehatbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_reddiehatbutton.y,0.1  * (60 / global.maxfps)) break;
//Christmas
case(8): x = lerp(x,o_christmashatbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_christmashatbutton.y,0.1  * (60 / global.maxfps)) break;
//Witch
case(9): x = lerp(x,o_witchhatbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_witchhatbutton.y,0.1  * (60 / global.maxfps)) break;
//Pumpkin
case(10): x = lerp(x,o_pumpkinhatbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_pumpkinhatbutton.y,0.1  * (60 / global.maxfps)) break;
//Brown
case(11): x = lerp(x,o_brownhatbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_brownhatbutton.y,0.1  * (60 / global.maxfps)) break;
//Gray
case(12): x = lerp(x,o_grayhatbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_grayhatbutton.y,0.1  * (60 / global.maxfps)) break;
//White
case(13): x = lerp(x,o_whitehatbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_whitehatbutton.y,0.1  * (60 / global.maxfps)) break;
//Sun
case(14): x = lerp(x,o_sunhatbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_sunhatbutton.y,0.1  * (60 / global.maxfps)) break;
//Red Block
case(15): x = lerp(x,o_redblockhatbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_redblockhatbutton.y,0.1  * (60 / global.maxfps)) break;
//Yellow Block
case(16): x = lerp(x,o_yellowblockhatbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_yellowblockhatbutton.y,0.1  * (60 / global.maxfps)) break;
//Green Block
case(17): x = lerp(x,o_greenblockhatbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_greenblockhatbutton.y,0.1  * (60 / global.maxfps)) break;
//Blue Block
case(18): x = lerp(x,o_blueblockhatbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_blueblockhatbutton.y,0.1  * (60 / global.maxfps)) break;
//White Block
case(19): x = lerp(x,o_whiteblockhatbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_whiteblockhatbutton.y,0.1  * (60 / global.maxfps)) break;
//Spike Hat
case(20): x = lerp(x,o_spikehatbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_spikehatbutton.y,0.1  * (60 / global.maxfps)) break;
//Invisible Spike Hat
case(21): x = lerp(x,o_invisiblespikehatbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_invisiblespikehatbutton.y,0.1  * (60 / global.maxfps)) break;
//Vertical Spike Hat
case(22): x = lerp(x,o_Vspikehatbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_Vspikehatbutton.y,0.1  * (60 / global.maxfps)) break;
//Horizontal Spike Hat
case(23): x = lerp(x,o_Hspikehatbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_Hspikehatbutton.y,0.1  * (60 / global.maxfps)) break;
//Bestagon Hat
case(24): x = lerp(x,o_hexagonhatbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_hexagonhatbutton.y,0.1  * (60 / global.maxfps)) break;
//Bread Hat
case(25): x = lerp(x,o_breadhatbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_breadhatbutton.y,0.1  * (60 / global.maxfps)) break;
//Soldier Hat
case(26): x = lerp(x,o_soldierhatbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_soldierhatbutton.y,0.1  * (60 / global.maxfps)) break;
//Samurai Hat
case(27): x = lerp(x,o_samuraihatbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_samuraihatbutton.y,0.1  * (60 / global.maxfps)) break;
//Red Beanie Hat
case(28): x = lerp(x,o_redbeaniehatbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_redbeaniehatbutton.y,0.1  * (60 / global.maxfps)) break;
//Yellow Beanie Hat
case(29): x = lerp(x,o_yellowbeaniehatbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_yellowbeaniehatbutton.y,0.1  * (60 / global.maxfps)) break;
//Green Beanie Hat
case(30): x = lerp(x,o_greenbeaniehatbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_greenbeaniehatbutton.y,0.1  * (60 / global.maxfps)) break;
//Blue Beanie Hat
case(31): x = lerp(x,o_bluebeaniehatbutton.x,0.1  * (60 / global.maxfps))
y = lerp(y,o_bluebeaniehatbutton.y,0.1  * (60 / global.maxfps)) break;
}
}