draw_set_font(fnt_death)
draw_set_color(c_white)
//Settings
if room = r_settings or instance_exists(o_settingspausemenu) {
switch(global.infosettings) {
case(0): draw_text(32,704,"Hover on something for more info!") break;
case(1): draw_text(32,704,"Change if you want stars to be in the background.") break;
case(2): draw_text(32,704,"Enable or disable particles that come out of blocks.") break;
case(3): draw_text(32,704,"Enable or disable particles that come out of items.") break;
case(4): draw_text(32,704,"Enable or disable particles that come out of the player (or troops).") break;
case(5): draw_text(32,704,"Gives the player immunity to all obstacles except when restarting if on. (Cheat)") break;
case(6): draw_text(32,704,"Drag with your mouse to change the music volume.") break;
case(7): draw_text(32,704,"Drag with your mouse to change the sound volume.") break;
case(8): draw_text(32,704,"Enable/Disable backgrounds (Doesn't include star backgrounds).") break;
case(9): draw_text(32,704,"Shows realtime frames per second of the game.") break;
case(10): draw_text(32,704,"If you see this, congrats, you found the old hat setting info!.") break;
case(11): draw_text(32,704,"Distorts Music when the player dies. Sounds aren't affected. (Except Jumping!)") break;
case(12): draw_text(32,704,"Auto-Pauses the game when the game window is minimized or not focused.") break;
case(13): draw_text(32,704,"Vignette effect gives shadows on the screen borders when the player is alive.") break;
case(14): draw_text(32,704,"Timer will have 1 decimal instead of 2 if enabled.") break;
case(15): draw_text(32,704,"Blocks will use a formula to show an illusion of 3D Blocks, performance will be decreased.") break;
case(16): draw_text(32,704,"Gives a colorblind effect. Have this at 'Normal' if you do not have colorblind issues.") break;
case(17): draw_text(32,704,"Enables/Disables block backgrounds. (Won't be affected in Level Editor)") break;
case(18): draw_text(32,704,"Enables/Disables tutorial in the Level Editor. (Can be revisited if [?] button is pressed)") break;
case(19): draw_text(32,704,"Fullscreens the game.") break;
case(20): draw_text(32,704,"Enables/Disables troop voicelines.") break;
case(21): draw_text(32,704,"Change graphics, colorblind settings and visuals.")  break;
case(22): draw_text(32,704,"Change the volume of music and sound, and other audio settings.") break;
case(23): draw_text(32,704,"Change controls in the game.")  break;
case(24): draw_text(32,704,"Turn cheats on or off. (WARNING: NO PROGRESS WILL BE MADE IF CHEATS ARE ON)")  break;
case(25): draw_text(32,704,"You won't lose lives in hardmode and endless run if on. (Cheat).") break;
case(26): draw_text(32,704,"Click to change certain controls.") break;
case(27): draw_text(32,704,"Enables liquid shaders. (WARNING: Might not work on old computers!)") break;
case(28): draw_text(32,704,"Drag with your mouse to change master volume.") break;
case(29): draw_text(32,704,"Puts light behind the gun so it can be more visible.") break;
case(30): draw_text(32,704,"Choose the maximum FPS. This setting should be same as your refresh rate (HZ).") break;
case(31): draw_text(32,704,"Set all controls by default.") break;
case(32): draw_text(32,704,"Choose whenever you want to hold the skip level button to skip a level.") break;
case(33): draw_text(32,704,"Choose which language you want (UNFINISHED).") break;
case(34): draw_text(32,704,"Change whenever or not you want old numbers for speed/gravity items.") break;
case(35): draw_text(32,704,"Enable/Disable texture filtering (linear interpolation)") break;
case(36): draw_text(32,704,"Reddie abuses all laws of physics and can pass through blocks. (Cheat)") break;
case(37): draw_text(32,704,"Kills all bosses and enemies when you start a level. (Cheat)") break;
case(38): draw_text(32,704,"Press this to turn on availability for cheating (YOU CANNOT DEACTIVATE THIS)") break;
case(39): draw_text(32,704,"Enable the Object Counter in Level Editor (hides if in play mode)") break;
case(40): draw_text(32,704,"Casual Mode makes the game easier by including checkpoints in levels.") break;
case(-1): draw_text(32,704,"Click to return to the main menu! Wait, that's not a setting though!") break;

}
}
//Skins
if room = r_skinmenu {
	
switch(global.customizeselect) {

case(1):
switch(global.skininfo) {
case(0): draw_text(32,704,"Hover on something for more info!") break;
case(1):
if global.skin001 = 1 {draw_text(32,704,"Your default skin, Reddie, he will beat everything no matter what.") }
if global.skin001 = 0 {draw_text(32,704,"We do not like cheaters here.")}
break;
case(2):
if global.skin002 = 0 {draw_text(32,704,"Unlock this by beating Kaizo Challenge.")}
if global.skin002 = 1 {draw_text(32,704,"He had a hard time, he reminds me of something... hmm.")}
break;
case(3):
if global.skin003 = 0 {draw_text(32,704,"Unlock this by beating the first boss, the Hotdog.")}
if global.skin003 = 1 {draw_text(32,704,"He is currently in a bad mood.")}
break;
case(4):
if global.skin004 = 0 {draw_text(32,704,"Unlock this by beating Blind Challenge.")}
if global.skin004 = 1 {draw_text(32,704,"Neeeeerddd!")}
break;
case(5):
if global.skin005 = 0 {draw_text(32,704,"Unlock this by beating Hardmode at Medium Difficulty.")}
if global.skin005 = 1 {draw_text(32,704,"He is quite sad.")}
break;
case(6):
if global.skin006 = 0 {	draw_text(32,704,"Unlock this by beating the second boss, the Hammer.")}
if global.skin006 = 1 {draw_text(32,704,"You are a block! A pretty good, but a funny disguise.")}
break;
case(7):
if global.skin007 = 0 {draw_text(32,704,"Unlock this by beating Hardmode on Impossible Difficulty, good luck.")}
if global.skin007 = 1 {draw_text(32,704,"Remastered Edition! Full HD! 4K Resolution! Wait, isn't that too much?")}
break;
case(8):
if global.skin008 = 0 {draw_text(32,704,"Unlock this by beating Story Mode.")}
if global.skin008 = 1 {draw_text(32,704,"You feel like a champion, or you feel like that you're holding a golden coin actually.") }
break;
case(9):
if global.skin009 = 0 {draw_text(32,704,"Unlock this by beating Hardmode on Difficult Difficulty.")}
if global.skin009 = 1 {draw_text(32,704,"He's actually aggressive. Be careful.")}
break;
case(10):
if global.skin010 = 0 {draw_text(32,704,"Unlock this by beating the 'Big Rooms' challenge.")}
if global.skin010 = 1 {draw_text(32,704,"Bro, he's hip!")}
break;
case(11):
if global.skin011 = 0 {draw_text(32,704,"? ? ?")}
if global.skin011 = 1 {draw_text(32,704,"This isn't Reddie, this is The Dark Knight...")}
break;
case(12):
if global.skin012 = 0 {draw_text(32,704,"Unlock this by collecting 250 coins in total.")}
if global.skin012 = 1 {draw_text(32,704,"Flex Paul can skip a ton of levels.")}
break;
case(13):
if global.skin013 = 0 {draw_text(32,704,"? ? ?")}
if global.skin013 = 1 {draw_text(32,704,"You are now golden! Or are you?")}
break;
case(14):
if global.skin014 = 0 {draw_text(32,704,"Beat the 'Slippery Challenge' to get this skin.")}
if global.skin014 = 1 {draw_text(32,704,"This skin is 'cool'!")}
break;
case(15):
if global.skin015 = 0 {draw_text(32,704,"Unlock this by getting 1000 deaths.")}
if global.skin015 = 1 {draw_text(32,704,"Dude are you feeling alright? Ehh, kinda..")}
break;
case(16):
if global.skin016 = 0 {draw_text(32,704,"Beat the 'Speed is Key Challenge' to get this skin.")}
if global.skin016 = 1 {draw_text(32,704,"You are protected with this, and with clean hands!")}
break;
case(17):
if global.skin017 = 0 {draw_text(32,704,"Beat the 'World 6 Challenge' to get this skin.")}
if global.skin017 = 1 {draw_text(32,704,"I hate making countryballs, but here you go canadian. You deserve it.")}
break;
case(18):
if global.skin018 = 0 {draw_text(32,704,"? ? ?")}
if global.skin018 = 1 {draw_text(32,704,"Fully protected from all hazards.")}
break;
case(19):
if global.skin019 = 0 {draw_text(32,704,"Unlock this by beating the Ladder Challenge.")}
if global.skin019 = 1 {draw_text(32,704,"Reddie with a pacifier. What do you expect? Something awesome? Lol.")}
break;
case(20):
if global.skin020 = 0 {draw_text(32,704,"Unlock this by collecting 100 coins in story mode in a single run without skipping.")}
if global.skin020 = 1 {draw_text(32,704,"Now I am Power.")}
break;
case(21):
if global.skin021 = 0 {draw_text(32,704,"Unlock this by beating the Spike Challenge.")}
if global.skin021 = 1 {draw_text(32,704,"Nice Fancy Clothes!")}
break;
case(22):
if global.skin022 = 0 {draw_text(32,704,"? ? ?")}
if global.skin022 = 1 {draw_text(32,704,"This isn't your ordinary default Reddie! It is animated Reddie!")}
break;
case(23):
if global.skin023 = 0 {draw_text(32,704,"Unlock this by beating the Water Challenge.")}
if global.skin023 = 1 {draw_text(32,704,"Note! You won't have advantages in water with this skin.")}
break;
case(24):
if global.skin024 = 0 {draw_text(32,704,"This skin should never be unlocked, we kindly ask you to stay away from it.")}
if global.skin024 = 1 {
if instance_exists(o_forseneskinbutton) {
if o_forseneskinbutton.image_index = 0 { draw_text(32,704,"Uhhhh, eehhhh uhhhhhhh.")} else {
	draw_text(32,704,"yea but BTTV is like a third-party thing and I don't know...")
}
}
}
break;
case(25):
if global.skin025 = 0 {draw_text(32,704,"? ? ?")}
if global.skin025 = 1 {draw_text(32,704,"This skin looks very familiar.")}
break;
case(26):
if global.skin026 = 0 {draw_text(32,704,"Unlock this by beating Hardmode on Ridiculous Difficulty.")}
if global.skin026 = 1 {draw_text(32,704,"A bomb has been planted.")}
break;
case(27):
if global.skin027 = 0 {draw_text(32,704,"Unlock this by beating Hardmode on Yeah GL Difficulty. Yeah, good luck!")}
if global.skin027 = 1 {draw_text(32,704,"It's the hitbox of reddie!")}
break;
case(28):
if global.skin028 = 0 {draw_text(32,704,"Unlock this by beating the Moving Challenge")}
if global.skin028 = 1 {draw_text(32,704,"Strong like metal!")}
break;
case(29):
if global.skin029 = 0 {draw_text(32,704,"Unlock this by buying the Yellow Top Hat in the Hat Merchant Shop.")}
if global.skin029 = 1 {draw_text(32,704,"You look fancy with that monocle!")}
break;
case(30):
if global.skin030 = 0 {draw_text(32,704,"Unlock this by jumping 60000 times.")}
if global.skin030 = 1 {draw_text(32,704,"The Legend of Rednobi.")}
break;
case(31):
if global.skin031 = 0 {draw_text(32,704,"Unlock this by beating the Community Challenge.")}
if global.skin031 = 1 {draw_text(32,704,"Almost Legendary")}
break;
case(32):
if global.skin032 = 0 {draw_text(32,704,"Experience absolute hell in endless run.")}
if global.skin032 = 1 {draw_text(32,704,"Ever wanted reddie with inverted animations? Here you go!")}
break;
case(33):
if global.skin033 = 0 {draw_text(32,704,"Beat the game on grayscale.")}
if global.skin033 = 1 {draw_text(32,704,"Downward Spiral Downward Spiral Downward Spiral Downward Spiral Downward")}
break;
case(34):
if global.skin034 = 0 {draw_text(32,704,"Unlock this by collecting 250 1UPS in total.")}
if global.skin034 = 1 {draw_text(32,704,"This reddie skin loves you! And it loves doors!")}
break;
case(35):
if global.skin035 = 0 {draw_text(32,704,"? ? ?")}
if global.skin035 = 1 {draw_text(32,704,"Tick Tock. What time is it?!")}
break;
case(36):
if global.skin036 = 0 {draw_text(32,704,"Unlock this by finishing hardmode with over 120 lives.") }
if global.skin036 = 1 {draw_text(32,704,"Want an additional challenge?") }
break;
case(37):
if global.skin037 = 0 {draw_text(32,704,"Beat the Corrupted Spike Challenge to unlock this skin.") }
if global.skin037 = 1 {draw_text(32,704,"The arrow tells you where you are headed.") }
break;
case(38):
if global.skin038 = 0 {draw_text(32,704,"Get killed by a spike 100 times, by a golden spike 10 times and weird spike once.") }
if global.skin038 = 1 {draw_text(32,704,"You are now a disguised Spike, ouch!") }
break;
case(39):
if global.skin039 = 0 {draw_text(32,704,"Have over 500 credits as your current balance.") }
if global.skin039 = 1 {draw_text(32,704,"Reddie is split in half! For some reason.") }
break;
case(40):
if global.skin040 = 0 {draw_text(32,704,"Beat the Corrupted Spike Challenge to unlock this skin.") }
if global.skin040 = 1 {draw_text(32,704,"ARRRRRRRR!") }
break;
case(41):
if global.skin041 = 0 {draw_text(32,704,"? ? ?") }
if global.skin041 = 1 {draw_text(32,704,"Reddie 2077") }
break;

}
break;

//Hats
case(2):
switch(global.skininfo) {
case(1): draw_text(32,704,"Unequip a hat.") break;
case(2):
if global.hat001 = -1 {draw_text(32,704,"Beat the Tutorial Challenge to unlock this hat in the hat merchant shop.")}
if global.hat001 = 0 {draw_text(32,704,"Hat available at the hat merchant.")}
if global.hat001 = 1 {draw_text(32,704,"You graduated!")}
break;
case(3):
if global.hat002 = 0 {draw_text(32,704,"Hat available at the hat merchant.")}
if global.hat002 = 1 {draw_text(32,704,"Zombies wear this!")}
break;
case(4):
if global.hat003 = -1 {draw_text(32,704,"Available in the shop on TCC Anniversary or on Infiland's birthday.")}
if global.hat003 = 0 {draw_text(32,704,"Hat available at the hat merchant.")}
if global.hat003 = 1 {draw_text(32,704,"It's time to party!")}
break;
case(5):
if global.hat004 = 0 {draw_text(32,704,"Hat available at the hat merchant.")}
if global.hat004 = 1 {draw_text(32,704,"These things are out of trees.")}
break;
case(6):
if global.hat005 = 0 {draw_text(32,704,"Hat available at the hat merchant.")}
if global.hat005 = 1 {draw_text(32,704,"Now you're a gentlemen.")}
break;
case(7):
if global.hat006 = 0 {draw_text(32,704,"Hat available at the hat merchant. It's expensive though!")}
if global.hat006 = 1 {draw_text(32,704,"Now you're a rich super gentlemen.")}
break;
case(8):
if global.hat007 = 0 {draw_text(32,704,"Hat available at the hat merchant.")}
if global.hat007 = 1 {draw_text(32,704,"You can put another Reddie on Reddie.")}
break;
case(9):
if global.hat008 = -1 {draw_text(32,704,"Available in the shop on Christmas (both 25th Dec and 7th Jan).")}
if global.hat008 = 0 {draw_text(32,704,"Hat available at the hat merchant.")}
if global.hat008 = 1 {draw_text(32,704,"Hoo hoo hoo.")}
break;
case(10):
if global.hat009 = -1 {draw_text(32,704,"Available in the shop on Halloween.")}
if global.hat009 = 0 {draw_text(32,704,"Hat available at the hat merchant.")}
if global.hat009 = 1 {draw_text(32,704,"How do I make witch sounds?")}
break;
case(11):
if global.hat010 = -1 {draw_text(32,704,"Available in the shop on Halloween.")}
if global.hat010 = 0 {draw_text(32,704,"Hat available at the hat merchant.")}
if global.hat010 = 1 {draw_text(32,704,"Scary!")}
break;
case(12):
if global.hat011 = 0 {draw_text(32,704,"Hat available at the hat merchant.")}
if global.hat011 = 1 {draw_text(32,704,"A basic brown hat.")}
break;
case(13):
if global.hat012 = 0 {draw_text(32,704,"Hat available at the hat merchant.")}
if global.hat012 = 1 {draw_text(32,704,"A basic gray hat.")}
break;
case(14):
if global.hat013 = 0 {draw_text(32,704,"Hat available at the hat merchant.")}
if global.hat013 = 1 {draw_text(32,704,"A basic white hat.")}
break;
case(15):
if global.hat014 = 0 {draw_text(32,704,"Hat available at the hat merchant.")}
if global.hat014 = 1 {draw_text(32,704,"Use this when the weather is too hot. Or just as a cosmetic.")}
break;
case(16):
if global.hat015 = 0 {draw_text(32,704,"Hat available at the hat merchant.")}
if global.hat015 = 1 {draw_text(32,704,"It's a traditional red block.")}
break;
case(17):
if global.hat016 = 0 {draw_text(32,704,"Hat available at the hat merchant.")}
if global.hat016 = 1 {draw_text(32,704,"It's a traditional yellow block.")}
break;
case(18):
if global.hat017 = 0 {draw_text(32,704,"Hat available at the hat merchant.")}
if global.hat017 = 1 {draw_text(32,704,"It's a traditional green block.")}
break;
case(19):
if global.hat018 = 0 {draw_text(32,704,"Hat available at the hat merchant.")}
if global.hat018 = 1 {draw_text(32,704,"It's a traditional blue block.")}
break;
case(20):
if global.hat019 = 0 {draw_text(32,704,"Hat available at the hat merchant.")}
if global.hat019 = 1 {draw_text(32,704,"It's a traditional white block.")}
break;
case(21):
if global.hat020 = 0 {draw_text(32,704,"Hat available at the hat merchant.")}
if global.hat020 = 1 {draw_text(32,704,"It's a traditional spike.")}
break;
case(22):
if global.hat021 = 0 {draw_text(32,704,"Hat available at the hat merchant.")}
if global.hat021 = 1 {draw_text(32,704,"It's a traditional invisible spike.")}
break;
case(23):
if global.hat022 = 0 {draw_text(32,704,"Hat available at the hat merchant.")}
if global.hat022 = 1 {draw_text(32,704,"It's a traditional vertical moving spike.")}
break;
case(24):
if global.hat023 = 0 {draw_text(32,704,"Hat available at the hat merchant.")}
if global.hat023 = 1 {draw_text(32,704,"It's a traditional horizontal moving spike.")}
break;
case(25):
if global.hat024 = 0 {	draw_text(32,704,"Hat available at the hat merchant.")}
if global.hat024 = 1 {	draw_text(32,704,"Bestagon.")}
break;
case(26):
if global.hat025 = 0 {	draw_text(32,704,"Hat available at the hat merchant.")}
if global.hat025 = 1 {	draw_text(32,704,"Let's get that bread tho")}
break;
case(27):
if global.hat026 = 0 {	draw_text(32,704,"Hat available at the hat merchant.")}
if global.hat026 = 1 {	draw_text(32,704,"Protects you from ratatatatatata!")}
break;
case(28):
if global.hat027 = 0 {	draw_text(32,704,"Hat available at the hat merchant.")}
if global.hat027 = 1 {	draw_text(32,704,"I hope you have shurikens in your disposal!")}
break;
case(29):
if global.hat028 = 0 {	draw_text(32,704,"Hat available at the hat merchant.")}
if global.hat028 = 1 {	draw_text(32,704,"This is a cozy red beanie!")}
break;
case(30):
if global.hat028 = 0 {	draw_text(32,704,"Hat available at the hat merchant.")}
if global.hat028 = 1 {	draw_text(32,704,"This is a cozy yellow beanie!")}
break;
case(31):
if global.hat028 = 0 {	draw_text(32,704,"Hat available at the hat merchant.")}
if global.hat028 = 1 {	draw_text(32,704,"This is a cozy green beanie!")}
break;
case(32):
if global.hat028 = 0 {	draw_text(32,704,"Hat available at the hat merchant.")}
if global.hat028 = 1 {	draw_text(32,704,"This is a cozy blue beanie!")}
break;
case(33):
if global.hat028 = 0 {	draw_text(32,704,"Hat available at the hat merchant.")}
if global.hat028 = 1 {	draw_text(32,704,"Captains only!")}
break;

}
break;
}

}