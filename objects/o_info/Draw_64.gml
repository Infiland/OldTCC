draw_set_font(fnt_death)
draw_set_color(c_white)
//Settings
if room = r_settings or instance_exists(o_settingspausemenu) {
switch(global.infosettings) {
case(0): draw_text_ext(32,704,SETTING0,20,960) break;
case(1): draw_text_ext(32,704,SETTING1,20,960) break;
case(2): draw_text_ext(32,704,SETTING2,20,960) break;
case(3): draw_text_ext(32,704,SETTING3,20,960) break;
case(4): draw_text_ext(32,704,SETTING4,20,960) break;
case(5): draw_text_ext(32,704,SETTING5,20,960) break;
case(6): draw_text_ext(32,704,SETTING6,20,960) break;
case(7): draw_text_ext(32,704,SETTING7,20,960) break;
case(8): draw_text_ext(32,704,SETTING8,20,960) break;
case(9): draw_text_ext(32,704,SETTING9,20,960) break;
case(11): draw_text_ext(32,704,SETTING11,20,960) break;
case(12): draw_text_ext(32,704,SETTING12,20,960) break;
case(13): draw_text_ext(32,704,SETTING13,20,960) break;
case(14): draw_text_ext(32,704,SETTING14,20,960) break;
case(15): draw_text_ext(32,704,SETTING15,20,960) break;
case(16): draw_text_ext(32,704,SETTING16,20,960) break;
case(17): draw_text_ext(32,704,SETTING17,20,960) break;
case(18): draw_text_ext(32,704,SETTING18,20,960) break;
case(19): draw_text_ext(32,704,SETTING19,20,960) break;
case(20): draw_text_ext(32,704,SETTING20,20,960) break;
case(21): draw_text_ext(32,704,SETTING21,20,960) break;
case(22): draw_text_ext(32,704,SETTING22,20,960) break;
case(23): draw_text_ext(32,704,SETTING23,20,960) break;
case(24): draw_text_ext(32,704,SETTING24,20,960) break;
case(25): draw_text_ext(32,704,SETTING25,20,960) break;
case(26): draw_text_ext(32,704,SETTING20,20,960) break;
case(27): draw_text_ext(32,704,SETTING27,20,960) break;
case(28): draw_text_ext(32,704,SETTING28,20,960) break;
case(29): draw_text_ext(32,704,SETTING29,20,960) break;
case(30): draw_text_ext(32,704,SETTING30,20,960) break;
case(31): draw_text_ext(32,704,SETTING31,20,960) break;
case(32): draw_text_ext(32,704,SETTING32,20,960) break;
case(33): draw_text_ext(32,704,SETTING33,20,960) break;
case(34): draw_text_ext(32,704,SETTING34,20,960) break;
case(35): draw_text_ext(32,704,SETTING35,20,960) break;
case(36): draw_text_ext(32,704,SETTING36,20,960) break;
case(37): draw_text_ext(32,704,SETTING37,20,960) break;
case(38): draw_text_ext(32,704,SETTING38,20,960) break;
case(39): draw_text_ext(32,704,SETTING39,20,960) break;
case(40): draw_text_ext(32,704,SETTING40,20,960) break;
case(41): draw_text_ext(32,704,SETTING41,20,960) break;
case(42): draw_text_ext(32,704,SETTING42,20,960) break;
case(43): draw_text_ext(32,704,SETTING43,20,960) break;
case(44): draw_text_ext(32,704,SETTING44,20,960) break;

case(-1): draw_text_ext(32,704,SETTINGM1,20,960) break;
}

}
//Skins
if room = r_skinmenu {
	
switch(global.customizeselect) {

case(1):
switch(global.skininfo) {
case(0): draw_text(32,704,SETTING0) break;
case(1):
if global.skin001 = 1 {draw_text_ext(32,704,SKIN1_1,20,820) }
if global.skin001 = 0 {draw_text_ext(32,704,SKIN1_0,20,820) }
break;
case(2):
if global.skin002 = 0 {draw_text_ext(32,704,SKIN2_0,20,820)}
if global.skin002 = 1 {draw_text_ext(32,704,SKIN2_1,20,820)}
break;
case(3):
if global.skin003 = 0 {draw_text_ext(32,704,SKIN3_0,20,820)}
if global.skin003 = 1 {draw_text_ext(32,704,SKIN3_1,20,820)}
break;
case(4):
if global.skin004 = 0 {draw_text_ext(32,704,SKIN4_0,20,820)}
if global.skin004 = 1 {draw_text_ext(32,704,SKIN4_1,20,820)}
break;
case(5):
if global.skin005 = 0 {draw_text_ext(32,704,SKIN5_0,20,820)}
if global.skin005 = 1 {draw_text_ext(32,704,SKIN5_1,20,820)}
break;
case(6):
if global.skin006 = 0 {	draw_text_ext(32,704,SKIN6_0,20,820)}
if global.skin006 = 1 {draw_text_ext(32,704,SKIN6_1,20,820)}
break;
case(7):
if global.skin007 = 0 {draw_text_ext(32,704,SKIN7_0,20,820)}
if global.skin007 = 1 {draw_text_ext(32,704,SKIN7_1,20,820)}
break;
case(8):
if global.skin008 = 0 {draw_text_ext(32,704,SKIN8_0,20,820)}
if global.skin008 = 1 {draw_text_ext(32,704,SKIN8_1,20,820)}
break;
case(9):
if global.skin009 = 0 {draw_text_ext(32,704,SKIN9_0,20,820)}
if global.skin009 = 1 {draw_text_ext(32,704,SKIN9_1,20,820)}
break;
case(10):
if global.skin010 = 0 {draw_text_ext(32,704,SKIN10_0,20,820)}
if global.skin010 = 1 {draw_text_ext(32,704,SKIN10_1,20,820)}
break;
case(11):
if global.skin011 = 0 {draw_text(32,704,"? ? ?")}
if global.skin011 = 1 {draw_text_ext(32,704,SKIN11_1,20,820)}
break;
case(12):
if global.skin012 = 0 {draw_text_ext(32,704,SKIN12_0,20,820)}
if global.skin012 = 1 {draw_text_ext(32,704,SKIN12_1,20,820)}
break;
case(13):
if global.skin013 = 0 {draw_text(32,704,"? ? ?")}
if global.skin013 = 1 {draw_text_ext(32,704,SKIN13_1,20,820)}
break;
case(14):
if global.skin014 = 0 {draw_text_ext(32,704,SKIN14_0,20,820)}
if global.skin014 = 1 {draw_text_ext(32,704,SKIN14_1,20,820)}
break;
case(15):
if global.skin015 = 0 {draw_text_ext(32,704,SKIN15_0,20,820)}
if global.skin015 = 1 {draw_text_ext(32,704,SKIN15_1,20,820)}
break;
case(16):
if global.skin016 = 0 {draw_text_ext(32,704,SKIN16_0,20,820)}
if global.skin016 = 1 {draw_text_ext(32,704,SKIN16_1,20,820)}
break;
case(17):
if global.skin017 = 0 {draw_text_ext(32,704,SKIN17_0,20,820)}
if global.skin017 = 1 {draw_text_ext(32,704,SKIN17_1,20,820)}
break;
case(18):
if global.skin018 = 0 {draw_text(32,704,"? ? ?")}
if global.skin018 = 1 {draw_text_ext(32,704,SKIN18_1,20,820)}
break;
case(19):
if global.skin019 = 0 {draw_text_ext(32,704,SKIN19_0,20,820)}
if global.skin019 = 1 {draw_text_ext(32,704,SKIN19_1,20,820)}
break;
case(20):
if global.skin020 = 0 {draw_text_ext(32,704,SKIN20_0,20,820)}
if global.skin020 = 1 {draw_text_ext(32,704,SKIN20_1,20,820)}
break;
case(21):
if global.skin021 = 0 {draw_text_ext(32,704,SKIN21_0,20,820)}
if global.skin021 = 1 {draw_text_ext(32,704,SKIN21_1,20,820)}
break;
case(22):
if global.skin022 = 0 {draw_text(32,704,"? ? ?")}
if global.skin022 = 1 {draw_text_ext(32,704,SKIN22_1,20,820)}
break;
case(23):
if global.skin023 = 0 {draw_text_ext(32,704,SKIN23_0,20,820)}
if global.skin023 = 1 {draw_text_ext(32,704,SKIN23_1,20,820)}
break;
case(24):
if global.skin024 = 0 {draw_text_ext(32,704,SKIN24_0,20,820)}
if global.skin024 = 1 {
if instance_exists(o_forseneskinbutton) {
if o_forseneskinbutton.image_index = 0 { draw_text_ext(32,704,SKIN24_1,20,820)} else {
	draw_text_ext(32,704,SKIN24_2,20,820)
}
}
}
break;
case(25):
if global.skin025 = 0 {draw_text(32,704,"? ? ?")}
if global.skin025 = 1 {draw_text_ext(32,704,SKIN25_1,20,820)}
break;
case(26):
if global.skin026 = 0 {draw_text_ext(32,704,SKIN26_0,20,820)}
if global.skin026 = 1 {draw_text_ext(32,704,SKIN26_1,20,820)}
break;
case(27):
if global.skin027 = 0 {draw_text_ext(32,704,SKIN27_0,20,820)}
if global.skin027 = 1 {draw_text_ext(32,704,SKIN27_1,20,820)}
break;
case(28):
if global.skin028 = 0 {draw_text_ext(32,704,SKIN28_0,20,820)}
if global.skin028 = 1 {draw_text_ext(32,704,SKIN28_1,20,820)}
break;
case(29):
if global.skin029 = 0 {draw_text_ext(32,704,SKIN29_0,20,820)}
if global.skin029 = 1 {draw_text_ext(32,704,SKIN29_1,20,820)}
break;
case(30):
if global.skin030 = 0 {draw_text_ext(32,704,SKIN30_0,20,820)}
if global.skin030 = 1 {draw_text_ext(32,704,SKIN30_1,20,820)}
break;
case(31):
if global.skin031 = 0 {draw_text_ext(32,704,SKIN31_0,20,820)}
if global.skin031 = 1 {draw_text_ext(32,704,SKIN31_1,20,820)}
break;
case(32):
if global.skin032 = 0 {draw_text_ext(32,704,SKIN32_0,20,820)}
if global.skin032 = 1 {draw_text_ext(32,704,SKIN32_1,20,820)}
break;
case(33):
if global.skin033 = 0 {draw_text_ext(32,704,SKIN33_0,20,820)}
if global.skin033 = 1 {draw_text_ext(32,704,SKIN33_1,20,820)}
break;
case(34):
if global.skin034 = 0 {draw_text_ext(32,704,SKIN34_0,20,820)}
if global.skin034 = 1 {draw_text_ext(32,704,SKIN34_1,20,820)}
break;
case(35):
if global.skin035 = 0 {draw_text(32,704,"? ? ?")}
if global.skin035 = 1 {draw_text_ext(32,704,SKIN35_1,20,820)}
break;
case(36):
if global.skin036 = 0 {draw_text_ext(32,704,SKIN36_0,20,820) }
if global.skin036 = 1 {draw_text_ext(32,704,SKIN36_1,20,820) }
break;
case(37):
if global.skin037 = 0 {draw_text_ext(32,704,SKIN37_0,20,820) }
if global.skin037 = 1 {draw_text_ext(32,704,SKIN37_1,20,820) }
break;
case(38):
if global.skin038 = 0 {draw_text_ext(32,704,SKIN38_0,20,820) }
if global.skin038 = 1 {draw_text_ext(32,704,SKIN38_1,20,820) }
break;
case(39):
if global.skin039 = 0 {draw_text_ext(32,704,SKIN39_0,20,820) }
if global.skin039 = 1 {draw_text_ext(32,704,SKIN39_1,20,820) }
break;
case(40):
if global.skin040 = 0 {draw_text_ext(32,704,SKIN40_0,20,820) }
if global.skin040 = 1 {draw_text(32,704,"ARRRRRRRRGHHH!") }
break;
case(41):
if global.skin041 = 0 {draw_text(32,704,"? ? ?") }
if global.skin041 = 1 {draw_text(32,704,"Reddie 2077") }
break;
case(42):
if global.skin042 = 0 {draw_text_ext(32,704,SKIN42_0,20,820) }
if global.skin042 = 1 {draw_text_ext(32,704,SKIN42_1,20,820) }
break;
case(43):
if global.skin043 = 0 {draw_text_ext(32,704,SKIN43_0,20,820) }
if global.skin043 = 1 {draw_text_ext(32,704,SKIN43_1,20,820) }
break;
case(44):
if global.skin044 = 0 {draw_text_ext(32,704,SKIN44_0,20,820) }
if global.skin044 = 1 {draw_text_ext(32,704,SKIN44_1,20,820) }
break;
case(45):
if global.skin045 = 0 {draw_text_ext(32,704,SKIN45_0,20,820) }
if global.skin045 = 1 {draw_text_ext(32,704,SKIN45_1,20,820) }
break;
case(46):
if global.skin046 = 0 {draw_text_ext(32,704,CALENDARSKINUNLOCK,20,820) }
if global.skin046 = 1 {draw_text_ext(32,704,"He is staring at your soul... he is happy.",20,820) }
break;

}
break;

//Hats
case(2):
switch(global.skininfo) {
case(1): draw_text(32,704,"Unequip a hat.") break;
case(2):
if global.hat001 = -1 {draw_text(32,704,"Beat the Tutorial Challenge to unlock this hat in the hat merchant shop.")}
if global.hat001 = 0 {draw_text(32,704,HATAVAILABLE)}
if global.hat001 = 1 {draw_text(32,704,"You graduated!")}
break;
case(3):
if global.hat002 = 0 {draw_text(32,704,HATAVAILABLE)}
if global.hat002 = 1 {draw_text(32,704,"Zombies wear this!")}
break;
case(4):
if global.hat003 = -1 {draw_text(32,704,"Available in the shop on TCC Anniversary or on Infiland's birthday.")}
if global.hat003 = 0 {draw_text(32,704,HATAVAILABLE)}
if global.hat003 = 1 {draw_text(32,704,"It's time to party!")}
break;
case(5):
if global.hat004 = 0 {draw_text(32,704,HATAVAILABLE)}
if global.hat004 = 1 {draw_text(32,704,"These things are out of trees.")}
break;
case(6):
if global.hat005 = 0 {draw_text(32,704,HATAVAILABLE)}
if global.hat005 = 1 {draw_text(32,704,"Now you're a gentlemen.")}
break;
case(7):
if global.hat006 = 0 {draw_text(32,704,"Hat available at the hat merchant. It's expensive though!")}
if global.hat006 = 1 {draw_text(32,704,"Now you're a rich super gentlemen.")}
break;
case(8):
if global.hat007 = 0 {draw_text(32,704,HATAVAILABLE)}
if global.hat007 = 1 {draw_text(32,704,"You can put another Reddie on Reddie.")}
break;
case(9):
if global.hat008 = -1 {draw_text(32,704,"Available in the shop on Christmas (both 25th Dec and 7th Jan).")}
if global.hat008 = 0 {draw_text(32,704,HATAVAILABLE)}
if global.hat008 = 1 {draw_text(32,704,"Hoo hoo hoo.")}
break;
case(10):
if global.hat009 = -1 {draw_text(32,704,"Available in the shop on Halloween.")}
if global.hat009 = 0 {draw_text(32,704,HATAVAILABLE)}
if global.hat009 = 1 {draw_text(32,704,"How do I make witch sounds?")}
break;
case(11):
if global.hat010 = -1 {draw_text(32,704,"Available in the shop on Halloween.")}
if global.hat010 = 0 {draw_text(32,704,HATAVAILABLE)}
if global.hat010 = 1 {draw_text(32,704,"Scary!")}
break;
case(12):
if global.hat011 = 0 {draw_text(32,704,HATAVAILABLE)}
if global.hat011 = 1 {draw_text(32,704,"A basic brown hat.")}
break;
case(13):
if global.hat012 = 0 {draw_text(32,704,HATAVAILABLE)}
if global.hat012 = 1 {draw_text(32,704,"A basic gray hat.")}
break;
case(14):
if global.hat013 = 0 {draw_text(32,704,HATAVAILABLE)}
if global.hat013 = 1 {draw_text(32,704,"A basic white hat.")}
break;
case(15):
if global.hat014 = 0 {draw_text(32,704,HATAVAILABLE)}
if global.hat014 = 1 {draw_text(32,704,"Use this when the weather is too hot. Or just as a cosmetic.")}
break;
case(16):
if global.hat015 = 0 {draw_text(32,704,HATAVAILABLE)}
if global.hat015 = 1 {draw_text(32,704,"It's a traditional red block.")}
break;
case(17):
if global.hat016 = 0 {draw_text(32,704,HATAVAILABLE)}
if global.hat016 = 1 {draw_text(32,704,"It's a traditional yellow block.")}
break;
case(18):
if global.hat017 = 0 {draw_text(32,704,HATAVAILABLE)}
if global.hat017 = 1 {draw_text(32,704,"It's a traditional green block.")}
break;
case(19):
if global.hat018 = 0 {draw_text(32,704,HATAVAILABLE)}
if global.hat018 = 1 {draw_text(32,704,"It's a traditional blue block.")}
break;
case(20):
if global.hat019 = 0 {draw_text(32,704,HATAVAILABLE)}
if global.hat019 = 1 {draw_text(32,704,"It's a traditional white block.")}
break;
case(21):
if global.hat020 = 0 {draw_text(32,704,HATAVAILABLE)}
if global.hat020 = 1 {draw_text(32,704,"It's a traditional spike.")}
break;
case(22):
if global.hat021 = 0 {draw_text(32,704,HATAVAILABLE)}
if global.hat021 = 1 {draw_text(32,704,"It's a traditional invisible spike.")}
break;
case(23):
if global.hat022 = 0 {draw_text(32,704,HATAVAILABLE)}
if global.hat022 = 1 {draw_text(32,704,"It's a traditional vertical moving spike.")}
break;
case(24):
if global.hat023 = 0 {draw_text(32,704,HATAVAILABLE)}
if global.hat023 = 1 {draw_text(32,704,"It's a traditional horizontal moving spike.")}
break;
case(25):
if global.hat024 = 0 {	draw_text(32,704,HATAVAILABLE)}
if global.hat024 = 1 {	draw_text(32,704,"Bestagon.")}
break;
case(26):
if global.hat025 = 0 {	draw_text(32,704,HATAVAILABLE)}
if global.hat025 = 1 {	draw_text(32,704,"Let's get that bread tho")}
break;
case(27):
if global.hat026 = 0 {	draw_text(32,704,HATAVAILABLE)}
if global.hat026 = 1 {	draw_text(32,704,"Protects you from ratatatatatata!")}
break;
case(28):
if global.hat027 = 0 {	draw_text(32,704,HATAVAILABLE)}
if global.hat027 = 1 {	draw_text(32,704,"I hope you have shurikens in your disposal!")}
break;
case(29):
if global.hat028 = 0 {	draw_text(32,704,HATAVAILABLE)}
if global.hat028 = 1 {	draw_text(32,704,"This is a cozy red beanie!")}
break;
case(30):
if global.hat029 = 0 {	draw_text(32,704,HATAVAILABLE)}
if global.hat029 = 1 {	draw_text(32,704,"This is a cozy yellow beanie!")}
break;
case(31):
if global.hat030 = 0 {	draw_text(32,704,HATAVAILABLE)}
if global.hat030 = 1 {	draw_text(32,704,"This is a cozy green beanie!")}
break;
case(32):
if global.hat031 = 0 {	draw_text(32,704,HATAVAILABLE)}
if global.hat031 = 1 {	draw_text(32,704,"This is a cozy blue beanie!")}
break;
case(33):
if global.hat032 = 0 {	draw_text(32,704,HATAVAILABLE)}
if global.hat032 = 1 {	draw_text(32,704,"This is a cozy white beanie!")}
break;
case(34):
if global.hat033 = 0 {	draw_text(32,704,HATAVAILABLE)}
if global.hat033 = 1 {	draw_text(32,704,"Captains only!")}
break;
case(35):
if global.hat034 = 0 {	draw_text(32,704,HATAVAILABLE)}
if global.hat034 = 1 {	draw_text(32,704,"A cute bowtie!")}
break;
case(36):
if global.hat035 = -1 {	draw_text(32,704,"Beat the game to unlock this hat!")}
if global.hat035 = 0 {	draw_text(32,704,HATAVAILABLE)}
if global.hat035 = 1 {	draw_text(32,704,"After King's defeat, his crown was sold to you. Wear it with pride!")}
break;
case(37):
if global.hat036 = 0 {	draw_text(32,704,HATAVAILABLE)}
if global.hat036 = 1 {	draw_text(32,704,"Why does this exist?")}
break;
case(38):
if global.hat037 = 0 {	draw_text(32,704,HATAVAILABLE)}
if global.hat037 = 1 {	draw_text(32,704,"For Comrades from the glory days.")}
break;
case(39):
if global.hat038 = 0 {	draw_text(32,704,HATAVAILABLE)}
if global.hat038 = 1 {	draw_text(32,704,"Vikings have cool boats.")}
break;
case(40):
if global.hat039 = 0 {	draw_text(32,704,CALENDARHATUNLOCK)}
if global.hat039 = 1 {	draw_text(32,704,"YEEEEEHAAAAAWWW.")}
break;
case(41):
if global.hat040 = 0 {	draw_text(32,704,HATAVAILABLE)}
if global.hat040 = 1 {	draw_text(32,704,"A weird red suspicious creature.")}
break;
case(42):
if global.hat041 = 0 {	draw_text(32,704,HATAVAILABLE)}
if global.hat041 = 1 {	draw_text(32,704,"A weird yellow suspicious creature.")}
break;
case(43):
if global.hat042 = 0 {	draw_text(32,704,HATAVAILABLE)}
if global.hat042 = 1 {	draw_text(32,704,"A weird green suspicious creature.")}
break;
case(44):
if global.hat043 = 0 {	draw_text(32,704,HATAVAILABLE)}
if global.hat043 = 1 {	draw_text(32,704,"A weird blue suspicious creature.")}
break;
case(45):
if global.hat044 = 0 {	draw_text(32,704,HATAVAILABLE)}
if global.hat044 = 1 {	draw_text(32,704,"A weird white suspicious creature.")}
break;



}
break;

case(3): //ITEMS
switch(global.skininfo) {
case(1): draw_text(32,704,"Unequip a item.") break;
case(2):
if global.item001 = 0 {	draw_text(32,704,CALENDARITEMUNLOCK)}
if global.item001 = 1 {	draw_text(32,704,"Paint with your paintbrush!") }
break;
case(3):
if global.item002 = 0 {	draw_text(32,704,CALENDARITEMUNLOCK)}
if global.item002 = 1 {	draw_text(32,704,"Give this to someone you like!") }
break;
}
break;

}
}