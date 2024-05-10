function scr_checkachievements(){
if global.cheats = 1 { exit }
//LEVELS
/*
if !steam_get_achievement("LEVEL_COMPLETION_1") { //BEAT 1 LEVEL
if global.totallevelcompleted > 0 { steam_set_achievement("LEVEL_COMPLETION_1") }
}
if !steam_get_achievement("LEVEL_COMPLETION_2") { //BEAT 5 LEVEL
if global.totallevelcompleted > 4 { steam_set_achievement("LEVEL_COMPLETION_2") }
}
if !steam_get_achievement("LEVEL_COMPLETION_3") { //BEAT 15 LEVEL
if global.totallevelcompleted > 14 { steam_set_achievement("LEVEL_COMPLETION_3") }
}
if !steam_get_achievement("LEVEL_COMPLETION_4") { //BEAT 30 LEVEL
if global.totallevelcompleted > 29 { steam_set_achievement("LEVEL_COMPLETION_4") }
}
if !steam_get_achievement("LEVEL_COMPLETION_5") { //BEAT 50 LEVEL
if global.totallevelcompleted > 49 { steam_set_achievement("LEVEL_COMPLETION_5") }
}
if !steam_get_achievement("LEVEL_COMPLETION_6") { //BEAT 75 LEVEL
if global.totallevelcompleted > 74 { steam_set_achievement("LEVEL_COMPLETION_6") }
}
if !steam_get_achievement("LEVEL_COMPLETION_7") { //BEAT 100 LEVEL
if global.totallevelcompleted > 99 { steam_set_achievement("LEVEL_COMPLETION_7") }
}
if !steam_get_achievement("LEVEL_COMPLETION_8") { //BEAT 150 LEVEL
if global.totallevelcompleted > 149 { steam_set_achievement("LEVEL_COMPLETION_8") }
}
if !steam_get_achievement("LEVEL_COMPLETION_9") { //BEAT 250 LEVEL
if global.totallevelcompleted > 249 { steam_set_achievement("LEVEL_COMPLETION_9") }
}
if !steam_get_achievement("LEVEL_COMPLETION_10") { //BEAT 750 LEVEL
if global.totallevelcompleted > 749 { steam_set_achievement("LEVEL_COMPLETION_10") }
}
if !steam_get_achievement("LEVEL_COMPLETION_11") { //BEAT 2500 LEVEL
if global.totallevelcompleted > 2499 { steam_set_achievement("LEVEL_COMPLETION_11") }
}
	
//DEATHS
if !steam_get_achievement("DEATHS_1") { //DIE 1
if global.totaldeaths > 0 { steam_set_achievement("DEATHS_1") }
}
if !steam_get_achievement("DEATHS_2") { //DIE 10
if global.totaldeaths >= 10 { steam_set_achievement("DEATHS_2") }
}
if !steam_get_achievement("DEATHS_3") { //DIE 25
if global.totaldeaths >= 25 { steam_set_achievement("DEATHS_3") }
}
if !steam_get_achievement("DEATHS_4") { //DIE 50
if global.totaldeaths >= 50 { steam_set_achievement("DEATHS_4") }
}
if !steam_get_achievement("DEATHS_5") { //DIE 100
if global.totaldeaths >= 100 { steam_set_achievement("DEATHS_5") }
}
if !steam_get_achievement("DEATHS_6") { //DIE 175
if global.totaldeaths >= 175 { steam_set_achievement("DEATHS_6") }
}
if !steam_get_achievement("DEATHS_7") { //DIE 300
if global.totaldeaths >= 300 { steam_set_achievement("DEATHS_7") }
}
if !steam_get_achievement("DEATHS_8") { //DIE 500
if global.totaldeaths >= 500 { steam_set_achievement("DEATHS_8") }
}
if !steam_get_achievement("DEATHS_9") { //DIE 1000
if global.totaldeaths >= 1000 { steam_set_achievement("DEATHS_9") }
}
if !steam_get_achievement("DEATHS_10") { //DIE 3000
if global.totaldeaths >= 3000 { steam_set_achievement("DEATHS_10") }
}
if !steam_get_achievement("DEATHS_11") { //DIE 10000
if global.totaldeaths >= 10000 { steam_set_achievement("DEATHS_11") }
}
	
//COINS
if !steam_get_achievement("COIN_1") { //COLLECT 1 COIN
if global.totaldeaths > 0 { steam_set_achievement("COIN_1") }
}
	if !steam_get_achievement("COIN_2") { //COLLECT 5 COIN
if global.totaldeaths >= 5 { steam_set_achievement("COIN_2") }
}
if !steam_get_achievement("COIN_3") { //COLLECT 15 COIN
if global.totaldeaths >= 15 { steam_set_achievement("COIN_3") }
}
if !steam_get_achievement("COIN_4") { //COLLECT 30 COIN
if global.totaldeaths >= 30 { steam_set_achievement("COIN_4") }
}
if !steam_get_achievement("COIN_5") { //COLLECT 50 COIN
if global.totaldeaths >= 50 { steam_set_achievement("COIN_5") }
}
if !steam_get_achievement("COIN_6") { //COLLECT 75 COIN
if global.totaldeaths >= 75 { steam_set_achievement("COIN_6") }
}
if !steam_get_achievement("COIN_7") { //COLLECT 100 COIN
if global.totaldeaths >= 100 { steam_set_achievement("COIN_7") }
}
if !steam_get_achievement("COIN_8") { //COLLECT 150 COIN
if global.totaldeaths >= 150 { steam_set_achievement("COIN_8") }
}
if !steam_get_achievement("COIN_9") { //COLLECT 250 COIN
if global.totaldeaths >= 250 { steam_set_achievement("COIN_9") }
}
if !steam_get_achievement("COIN_10") { //COLLECT 750 COIN
if global.totaldeaths >= 750 { steam_set_achievement("COIN_10") }
}
if !steam_get_achievement("COIN_11") { //COLLECT 2500 COIN
if global.totaldeaths >= 2500 { steam_set_achievement("COIN_11") }
}

//BOSS
if !steam_get_achievement("BOSS_KILL_1") { //Boss 1
if room = r_boss1 {
if global.boss1 = 1 { steam_set_achievement("BOSS_KILL_1") }}
}
if !steam_get_achievement("BOSS_KILL_2") { //Boss 2
if room = r_boss2 {
if global.boss2 = 1 { steam_set_achievement("BOSS_KILL_2") }}
}
if !steam_get_achievement("BOSS_KILL_3") { //Boss 3
if room = r_boss3 {
if global.boss3 = 1 { steam_set_achievement("BOSS_KILL_3") }}
}
if !steam_get_achievement("BOSS_KILL_4") { //Boss 4
if room = r_boss4 {
if global.boss4 = 1 { steam_set_achievement("BOSS_KILL_4") }}
}
	
//CUSTOMIZATION
if !steam_get_achievement("FIRST_HAT") { //First Hat
if room = r_boss4 {
if global.boss4 = 1 { steam_set_achievement("FIRST_HAT") }}
}

//SECRET
if !steam_get_achievement("EASTEREGG_1") { //An Egg?
if room = r_easteregg1 {
steam_set_achievement("EASTEREGG_1")
}}

//HARD

//ENDLESS
if !steam_get_achievement("ENDLESS_BEGINNER") { //Endless Beginner (5)
	if global.endlesslevel >= 5 {
	if global.endlessrunmode != 3 {
	if global.endless = 1 {steam_set_achievement("ENDLESS_BEGINNER") }
	}}}
if !steam_get_achievement("ENDLESS_RUNNER") { //Endless Runner (20)
	if global.endlesslevel >= 20 {
	if global.endlessrunmode != 3 {
	if global.endless = 1 {steam_set_achievement("ENDLESS_RUNNER") }
	}}}
if !steam_get_achievement("ENDLESS_EXPERT") { //Endless Expert
	if global.endlesslevel >= 50 {
	if global.endlessrunmode != 3 {
	if global.endless = 1 {steam_set_achievement("ENDLESS_EXPERT") }
	}}}
if !steam_get_achievement("ENDLESS_MASTER") { //Endless Master
	if global.endlesslevel >= 100 {
	if global.endlessrunmode != 3 {
	if global.endless = 1 {steam_set_achievement("ENDLESS_MASTER") }
	}}}
*/
}