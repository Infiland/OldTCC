audio_stop_all()

if global.world5time = 0 {
instance_create(x,y,o_showworldtimeHUD)	
}

global.world5time = global.time - (global.world1time + global.world2time + global.world3time + global.world4time)

if global.world5time < 360 {
if global.endless = 0 {
if global.cheats = 0 {
if !steam_get_achievement("WORLD_5_QUICK") { steam_set_achievement("WORLD_5_QUICK") }
}}}

if global.music = 1 {
musicandsoundvolumefix()	
audio_play_sound(m_goodending,0,1);
}
instance_destroy(o_time)
instance_destroy(o_coincounter)
instance_destroy(o_ammocounter)
instance_destroy(o_timecounter)
instance_destroy(o_deathcounter)
if global.cheats = 0 {
	
if global.hardmode = 1 {
if global.hardmodelives > 120 {
if global.skin036 = 0 {
global.skin036 = 1	
}}}
	
if global.hardmodedifficulty >= 1 {
global.creditscurrency += 25
if !steam_get_achievement("HM_MEDIUM") { //Medium
steam_set_achievement("HM_MEDIUM") }
if global.skin005 = 0 {
global.skin005 = 1
}
if global.hardmodeunlock = 1 { 
	global.hardmodeunlock = 2 
	scr_savehardmode()
	}
}
if global.hardmodedifficulty >= 2 {
if !steam_get_achievement("HM_DIFFICULT") { //Difficult
steam_set_achievement("HM_DIFFICULT") }
global.creditscurrency += 30
if global.skin009 = 0 {
global.skin009 = 1
}
if global.hardmodeunlock = 2 { 
	global.hardmodeunlock = 3 
	scr_savehardmode()
	}
}

if global.hardmodedifficulty >= 3 {
if !steam_get_achievement("HM_INSANE") { //Insane
steam_set_achievement("HM_INSANE") }
global.creditscurrency += 40
if global.skin025 = 0 {
global.skin025 = 1
}
if global.hardmodeunlock = 3 { 
	global.hardmodeunlock = 4 
	scr_savehardmode()
	}
}

if global.hardmodedifficulty >= 4 {
if !steam_get_achievement("HM_RIDICULOUS") { //Insane
steam_set_achievement("HM_RIDICULOUS") }
global.creditscurrency += 55
if global.skin026 = 0 {
global.skin026 = 1
}
if global.hardmodeunlock = 4 { 
	global.hardmodeunlock = 5 
	scr_savehardmode()
	}
}


if global.hardmodedifficulty >= 5 {
if !steam_get_achievement("HM_IMPOSSIBLE") { //Impossible
steam_set_achievement("HM_IMPOSSIBLE") }
global.creditscurrency += 70
if global.skin007 = 0 {
global.skin007 = 1
}
if global.hardmodeunlock = 5 { 
	global.hardmodeunlock = 6 
	scr_savehardmode()
	}
}

if global.hardmodedifficulty >= 6 {
if !steam_get_achievement("HM_YEAHGL") { //Yeah GL
steam_set_achievement("HM_YEAHGL") }
global.creditscurrency += 90
if global.skin027 = 0 {
global.skin027 = 1
}
if global.hardmodeunlock = 6 { 
	global.hardmodeunlock = 7 
	scr_savehardmode()
	}
}

if global.hardmodedifficulty >= 7 {
if !steam_get_achievement("HM_ETERNALSUFFERING") { //Eternal Suffering
steam_set_achievement("HM_ETERNALSUFFERING") }
global.creditscurrency += 200
}

if global.hardmodedifficulty = 0 {
if global.skin008 = 0 {
if !steam_get_achievement("YOU_WIN") { //You win
steam_set_achievement("YOU_WIN") }
global.skin008 = 1
if global.hardmodeunlock = 0 { 
	global.hardmodeunlock = 1 
	scr_savehardmode()
	}
}}
if global.skin020 = 0 {
if global.special = 100 {
global.skin020 = 1
}}
global.world1 = 1
global.world2 = 1
global.world3 = 1
global.world4 = 1
global.world5 = 1
scr_saveskins()

}

//Achievements
if global.isgrayscale = true {
if global.colorblindsettings = 4 {
global.grayscaleachievement = true
global.skin033 = 1
scr_saveachievements()
scr_checkachievements()
if !steam_get_achievement("GRAYSCALE") {
steam_set_achievement("GRAYSCALE") }
}}

if global.isinvisible = true {
if global.skinselected = 35 {
if global.hatselected = 0 {
global.invisibleachievement = true
scr_saveachievements()
if !steam_get_achievement("INVISIBLE_SKIN") {
steam_set_achievement("INVISIBLE_SKIN") }
}}}

scr_saveskins()