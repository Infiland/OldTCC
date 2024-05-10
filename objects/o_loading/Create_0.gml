randomize()

//Move/Create Save Files
var directory = working_directory + "/Save Files/"
if !directory_exists(directory) {
		directory_create(directory)
		file_copy("Achievements.sav",directory + "Achievements.sav")
		file_delete("Achievements.sav"); //Achievements
		file_copy("Stats.sav",directory + "Stats.sav")
		file_delete("Stats.sav"); //Stats
		file_copy("Skins.sav",directory + "Skins.sav")
		file_delete("Skins.sav"); //Skins
		file_copy("Settings.sav",directory + "Settings.sav")
		file_delete("Settings.sav"); //Settings
		file_copy("Hats.sav",directory + "Hats.sav")
		file_delete("Hats.sav"); //Hats
		file_copy("Hardmode.sav",directory + "Hardmode.sav")
		file_delete("Hardmode.sav"); //Hardmode
		file_copy("Endless.sav",directory + "Endless.sav")
		file_delete("Endless.sav"); //Endless
		file_copy("SaveFile.sav",directory + "SaveFile.sav")
		file_delete("SaveFile.sav"); //Save File
		file_copy("ChallengeTime.sav",directory + "ChallengeTime.sav")
		file_delete("ChallengeTime.sav"); //Challenge Time
		file_copy("ChallengeDeaths.sav",directory + "ChallengeDeaths.sav")
		file_delete("ChallengeDeaths.sav"); //Challenge Deaths
}



global.portalfreeMU = 1
global.fileID = 0
global.achievementsscroll = 0
global.customlevelsscroll = 0
global.customlevelsscrollmax = 0
global.stars = 2
global.whiteblock = 1
global.itempar = 1
global.playerpar = 1
global.nostalgia = 0
global.easy = 0
global.music = 1
global.sound = 1
global.backround = 1
global.challenges = 0
global.fpssettings = 0
global.hatsettings = 1
global.musicvolume = 0.5
global.soundvolume = 0.5
global.mastervolume = 0.5
audio_master_gain(global.mastervolume)
global.hardmode = 0
global.autopausesettings = 0
global.hardmodedifficulty = 0
global.vignettesettings = 1
global.musicdistortionsettings = 1
global.decimalsettings = 0
global.rocketexplosionsound = 0
global.visual3dsettings = 0
global.colorblindsettings = 0
global.blockbackgroundsettings = 1
global.leveleditortutorialsettings = 1
global.troopvoicelinesettings = 1
global.infinitelivessettings = 0
global.watershadersettings = 1
global.gunvisibilitysettings = 1
global.skiplevelholdsettings = 1
global.oldGSsettings = 0
global.maxfps = 60
global.world1 = 0
global.world2 = 0
global.world3 = 0
global.world4 = 0
global.world5 = 0
global.checkdeposit = false
global.writingmode = 0
global.leveleditorstring = ""
global.leveleditormusic = 1
global.leveleditorversion = 1
global.LEbuttonpage = 1
global.LEBackground = 0
global.LEStarRotation = 0
global.LEBlockBackgroundRotation = 0
global.LEDiamondMedalTime = 35
global.LESavedWinTime = 0
global.endless = 0
global.chooserandomlevel = 0
global.chooserandommusic = 0
global.endlesslevel = 0
global.endlesslevelhighscore = 0
global.newendlesslevelhighscore = 0
global.choosesettings = 0
global.skinpage = 1
global.texturefilter = 0
global.chosenmusicER = 0
global.endless1upchange = 10
global.noclip = 0
global.berserk = 0
global.objcountersettings = 0
global.workshopfolder = ""
global.autothumbnailsettings = 1

global.world1time = 0
global.world2time = 0
global.world3time = 0
global.world4time = 0

global.demo = 0
global.language = 0
global.checkpointX = 0
global.checkpointY = 0
global.checkpointCOLOR = -1
global.checkpointAMMO = 0
global.casualmode = 0

global.cheats = 0
scr_loadendless()

//Calendar
global.calendaryear = 2022
global.calendarmonth = 1

//Controls
global.controlsskiplevel = "C"
global.controlsinteract = "X"
global.controlsjump = "Z"
global.controlsmoveright = "39"
global.controlsmoveleft = "37"
global.controlsrestart = "R"
scr_loadsettings()
game_set_speed(global.maxfps, gamespeed_fps);
if global.texturefilter = 1 {gpu_set_texfilter(true) }
if global.fpssettings > 0 {
instance_create(x,y,o_fpscounter)
}
instance_create(x,y,o_ColorBlindnessSimulation)	
//Stats
global.totaldeaths = 0
global.totaltime = 0
global.totaljumps = 0
global.totalcoins = 0
global.totalskips = 0
global.totalpickups = 0
global.totalnormalpickups = 0
global.totalgravitypickups = 0
global.totalspeedpickups = 0
global.totalusepickups = 0
global.totalkeypickups = 0
global.totalportal = 0
global.totaltorchpickups = 0
global.totallevelcompleted = 0
global.totalgunshots = 0
global.totalgunpickups = 0
global.totalammopickups = 0
global.totaldestroyedboxes = 0
global.totalenemykills = 0
global.total1ups = 0
global.totalrocketkills = 0
global.totaloxygenpickups = 0
global.cookies = 0
global.creditscurrency = 0
global.customERunlock = 0
global.oldERunlock = 0
global.totaldjumppickups = 0
//Deaths
global.totalblockdeaths = 0
global.totalrestartdeaths = 0
global.totalspikedeaths = 0
global.totalinvisiblespikedeaths = 0
global.totalverticalspikedeaths = 0
global.totalhorizontalspikedeaths = 0
global.totalgoldspikedeaths = 0
global.totalweirdspikedeaths = 0
global.totalvoiddeaths = 0
global.totalfiredeaths = 0
global.totallavadeaths = 0
global.totalbulletdeaths = 0
global.totalrocketdeaths = 0
global.totaltroopdeaths = 0
global.totalwaterdeaths = 0

scr_loadstats()
global.challengeinfo = 0
global.tutorialchallengetime = 9999
global.ladderchallengetime = 9999
global.bigroomchallengetime = 9999
global.slipperychallengetime = 9999
global.blindchallengetime = 9999
global.troopchallengetime = 9999
global.speedchallengetime = 9999
global.spikechallengetime = 9999
global.kaizochallengetime = 9999
global.world6challengetime = 9999
global.waterchallengetime = 9999
global.movingchallengetime = 9999
global.communitychallengetime = 9999
global.djumpchallengetime = 9999
global.cspikechallengetime = 9999
global.world7challengetime = 9999

global.tutorialchallengedeaths = 999999
global.ladderchallengedeaths = 999999
global.bigroomchallengedeaths = 999999
global.slipperychallengedeaths = 999999
global.blindchallengedeaths = 999999
global.troopchallengedeaths = 999999
global.speedchallengedeaths = 999999
global.spikechallengedeaths = 999999
global.kaizochallengedeaths = 999999
global.world6challengedeaths = 999999
global.waterchallengedeaths = 999999
global.movingchallengedeaths = 999999
global.communitychallengedeaths = 999999
global.djumpchallengedeaths = 999999
global.cspikechallengedeaths = 999999
global.world7challengedeaths = 999999

global.currentchallenge = 0
scr_loadchallengetime()
scr_loadchallengedeaths()

//Custom Endless Run
global.CESConfigure = 0
global.CERLives = 5
global.CERMusicChange = 10
global.CER1upChange = 10
global.CERyscroll = 0
var i = 0;
for(i=0;i<30;i++) {
variable_global_set("CERL" + string(i), 1)
variable_global_set("CERM" + string(i), 1)
}

//Multiplayer
global.multiplayerplayerconfigchoose = 1
global.multiplayerplayers = 1
global.multiplayerplayerskin[0] = 0
global.multiplayerplayerskin[1] = 0
global.multiplayerplayerskin[2] = 0
global.multiplayerplayerskin[3] = 0
global.multiplayerplayerhat[0] = 0
global.multiplayerplayerhat[1] = 0
global.multiplayerplayerhat[2] = 0
global.multiplayerplayerhat[3] = 0
global.multiplayerplayercontrols[0] = 0
global.multiplayerplayercontrols[1] = -1
global.multiplayerplayercontrols[2] = -2
global.multiplayerplayercontrols[3] = -3
global.customizeselectMU = 1
global.skinMUlocked = false
global.hatMUlocked = false
global.chooseminigameMU = false
global.playersleft = 0

//Achievements
global.isgrayscale = false
global.isinvisible = false
scr_loadachievements()

/*
//Skins
global.skin[1] = 0
var skins
for(skins = 0;skins <= 100; skins++) {
	global.skin[skins] = 0 + skins
}
//Hats
var hats
for(hats = 0;hats <= 69; hats++) {
	global.hats[hats] = 0 + hats
	}*/
//Skins
global.customizeselect = 1

global.skinselected = 0
global.skin001 = 1
global.skin002 = 0
global.skin003 = 0
global.skin004 = 0
global.skin005 = 0
global.skin006 = 0
global.skin007 = 0
global.skin008 = 0
global.skin009 = 0
global.skin010 = 0
global.skin011 = 0
global.skin012 = 0
global.skin013 = 0
global.skin014 = 0
global.skin015 = 0
global.skin016 = 0
global.skin017 = 0
global.skin018 = 0
global.skin019 = 0
global.skin020 = 0
global.skin021 = 0
global.skin022 = 0
global.skin023 = 0
global.skin024 = 0
global.skin025 = 0
global.skin026 = 0
global.skin027 = 0
global.skin028 = 0
global.skin029 = 0
global.skin030 = 0
global.skin031 = 0
global.skin032 = 0
global.skin033 = 0
global.skin034 = 0
global.skin035 = 0
global.skin036 = 0
global.skin037 = 0
global.skin038 = 0
global.skin039 = 0
global.skin040 = 0
global.skin041 = 0
global.skin042 = 0

//Hats
global.hatselected = 0
global.hat001 = -1
global.hat002 = 0
global.hat003 = -1
global.hat004 = 0
global.hat005 = 0
global.hat006 = 0
global.hat007 = 0
global.hat008 = -1
global.hat009 = -1
global.hat010 = -1
global.hat011 = 0
global.hat012 = 0
global.hat013 = 0
global.hat014 = 0
global.hat015 = 0
global.hat016 = 0
global.hat017 = 0
global.hat018 = 0
global.hat019 = 0
global.hat020 = 0
global.hat021 = 0
global.hat022 = 0
global.hat023 = 0
global.hat024 = 0
global.hat025 = 0
global.hat026 = 0
global.hat027 = 0
global.hat028 = 0
global.hat029 = 0
global.hat030 = 0
global.hat031 = 0
global.hat032 = 0
scr_loadskins()
scr_loadhats()

if global.hat003 = -1 {
if current_month = 9 {
if current_day = 3 {
global.hat003 = 0
scr_savehats()	
}}
if current_month = 11 {
if current_day = 18 {
global.hat003 = 0
scr_savehats()	
}}
}

if global.hat008 = -1 {
if current_month = 1 {
if current_day <= 7 {
global.hat008 = 0
scr_savehats()	
}}
if current_month = 12 {
if current_day >= 20 {
global.hat008 = 0
scr_savehats()	
}}
}

if global.hat009 = -1 || global.hat010 = -1 {
if current_month = 10 {
if current_day >= 20 {
global.hat009 = 0
global.hat010 = 0
scr_savehats()	
}}
}

//Hardmode
global.hardmodeunlock = 0
scr_loadhardmode()
if global.skin025 = 0 {
if global.hardmodeunlock > 2 {
global.skin025 = 1
}}
//Steam
global.steam_api = false
//steam_initialised()
audio_group_load(Music)

//Folders
	var directory = working_directory + "/Custom/"
	if !directory_exists(directory) {
		directory_create(directory)
		directory_create(directory + "Skins")
		directory_create(directory + "Hats")
		
		if file_exists(working_directory + "/Custom/README.txt") file_delete(working_directory + "/Custom/README.txt");
		var _f = file_text_open_write(working_directory + "/Custom/README.txt");
	    file_text_write_string(_f, string("This is not finished and has absolutely no functionality, hopefully the future versions will :)"));
		file_text_close(_f);
	}
	
	var directory = working_directory + "/LevelEditor Files/"
	if !directory_exists(directory) {directory_create(directory)}

	
//Read_Me Text File
    if file_exists("Save Files/README.txt") file_delete("Save Files/README.txt");
    var _f = file_text_open_write("Save Files/README.txt");
    file_text_write_string(_f, string("You found the Local Files, congrats!\nAnyway if you are reading this, PLEASE DO NOT MODIFY THESE FILES, it is considered cheating.\nPlease use this only for bugfixing purposes.\n\nAlso if the game crashed, go to the Other folder and send it to our discord server: https://discord.gg/SSz5THd"));
    file_text_close(_f);
	file_delete("README.txt")


alarm[0] = 15