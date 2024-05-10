changey = 0
changex = 0
textchange = 0
textspeed = 0.03 * (60 / global.maxfps)
red = 0
blue = 0
green = 0
dist = 2
colorchange = 0
colorthingy = 50
showhighscore = 0
deaths = 0

challenge = 0
challengetime = 0
challengedeaths = 0

//Challanges
if global.cheats = 0 {

switch(global.currentchallenge) {
case(1): challenge = global.kaizochallengetime
if !steam_get_achievement("KAIZO_CHALLENGE") { steam_set_achievement("KAIZO_CHALLENGE") }
if global.kaizochallengetime > global.time {
global.kaizochallengetime = global.time
steam_upload_score("Kaizo Challenge Time", global.kaizochallengetime * 1000);
}
if global.kaizochallengedeaths > global.deaths {
global.kaizochallengedeaths = global.deaths
}
break;
case(2): challenge = global.blindchallengetime
if global.blindchallengetime > global.time {
global.blindchallengetime = global.time
steam_upload_score("Blind Challenge Time", global.blindchallengetime * 1000);
}
if global.blindchallengedeaths > global.deaths {
global.blindchallengedeaths = global.deaths
}
break;
case(3): challenge = global.bigroomchallengetime
if global.bigroomchallengetime > global.time {
global.bigroomchallengetime = global.time
steam_upload_score("Big Room Challenge Time", global.bigroomchallengetime * 1000);
}
if global.bigroomchallengedeaths > global.deaths {
global.bigroomchallengedeaths = global.deaths
}
break;
case(4): challenge = global.troopchallengetime
if global.troopchallengetime > global.time {
global.troopchallengetime = global.time
steam_upload_score("Troop Challenge Time", global.troopchallengetime * 1000);
}
if global.troopchallengedeaths > global.deaths {
global.troopchallengedeaths = global.deaths
}
break;
case(5): challenge = global.slipperychallengetime 
if global.slipperychallengetime > global.time {
global.slipperychallengetime = global.time
steam_upload_score("Slippery Challenge Time", global.slipperychallengetime * 1000);
}
if global.slipperychallengedeaths > global.deaths {
global.slipperychallengedeaths = global.deaths
}
break;
case(6): challenge = global.speedchallengetime
if global.speedchallengetime > global.time {
global.speedchallengetime = global.time
steam_upload_score("Speed Challenge Time", global.speedchallengetime * 1000);
}
if global.speedchallengedeaths > global.deaths {
global.speedchallengedeaths = global.deaths
}
break;
case(7): challenge = global.world6challengetime
if !steam_get_achievement("WORLD_6") { steam_set_achievement("WORLD_6") }
if global.world6challengetime > global.time {
global.world6challengetime = global.time
steam_upload_score("World 6 Challenge Time", global.world6challengetime * 1000);
}
if global.world6challengedeaths > global.deaths {
global.world6challengedeaths = global.deaths
}
break;
case(8): challenge = global.ladderchallengetime 
if global.ladderchallengetime > global.time {
global.ladderchallengetime = global.time
steam_upload_score("Ladder Challenge Time", global.ladderchallengetime * 1000);
}
if global.ladderchallengedeaths > global.deaths {
global.ladderchallengedeaths = global.deaths
}
break;
case(9): 
challenge = global.tutorialchallengetime 
if global.tutorialchallengetime > global.time {
global.tutorialchallengetime = global.time
steam_upload_score("Tutorial Challenge Time", global.tutorialchallengetime * 1000);
}
if global.tutorialchallengedeaths > global.deaths {
global.tutorialchallengedeaths = global.deaths
}
break;
case(10): challenge = global.spikechallengetime
if global.spikechallengetime > global.time {
global.spikechallengetime = global.time
steam_upload_score("Spike Challenge Time", global.spikechallengetime * 1000);
}
if global.spikechallengedeaths > global.deaths {
global.spikechallengedeaths = global.deaths
}
break;
case(11): challenge = global.waterchallengetime
if global.waterchallengetime > global.time {
global.waterchallengetime = global.time
steam_upload_score("Water Challenge Time", global.waterchallengetime * 1000);
}
if global.waterchallengedeaths > global.deaths {
global.waterchallengedeaths = global.deaths
}
break;
case(12): challenge = global.movingchallengetime
if global.movingchallengetime > global.time {
global.movingchallengetime = global.time
steam_upload_score("Moving Challenge Time", global.movingchallengetime * 1000);
}
if global.movingchallengedeaths > global.deaths {
global.movingchallengedeaths = global.deaths
}
break;
case(13): challenge = global.communitychallengetime
if global.communitychallengetime > global.time {
global.communitychallengetime = global.time
steam_upload_score("Community Challenge Time", global.communitychallengetime * 1000);
}
if global.communitychallengedeaths > global.deaths {
global.communitychallengedeaths = global.deaths
}
break;
case(14): challenge = global.djumpchallengetime
if global.djumpchallengetime > global.time {
global.djumpchallengetime = global.time
steam_upload_score("DJ Challenge Time", global.djumpchallengetime * 1000);
}
if global.djumpchallengedeaths > global.deaths {
global.djumpchallengedeaths = global.deaths
}
break;
case(15): challenge = global.cspikechallengetime
if global.cspikechallengetime > global.time {
global.cspikechallengetime = global.time
steam_upload_score("Corrupted Spike Challenge Time", global.cspikechallengetime * 1000);
}
if global.cspikechallengedeaths > global.deaths {
global.cspikechallengedeaths = global.deaths
}
break;
case(16): challenge = global.world7challengetime
if !steam_get_achievement("WORLD_7") { steam_set_achievement("WORLD_7") }
if global.world7challengetime > global.time {
global.world7challengetime = global.time
steam_upload_score("World 7 Challenge Time", global.world7challengetime * 1000);
}
if global.world7challengedeaths > global.deaths {
global.world7challengedeaths = global.deaths
}
break;
}

if challengetime > global.time {
challengetime = global.time
}
if challengedeaths > global.deaths {
challengedeaths = global.deaths
}

if challenge > global.time {
showhighscore = 1	
}

scr_savechallengetime()
scr_savechallengedeaths()

if !steam_get_achievement("FIRST_CHALLENGE") { steam_set_achievement("FIRST_CHALLENGE") }
if challengedeaths = 0 { if !steam_get_achievement("PERFECT_CHALLENGE") { steam_set_achievement("PERFECT_CHALLENGE") }}
}

timer = 75
timer2 = 10
nexttext = 0
x1 = -1000
x2 = -1000
x3 = -1000
x4 = -1000