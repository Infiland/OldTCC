music2bugfix()

if global.world1time = 0 {
instance_create(x,y,o_showworldtimeHUD)	
}

global.world1time = global.time

if global.world1time < 120 {
if global.endless = 0 {
if global.cheats = 0 {
if !steam_get_achievement("WORLD_1_QUICK") { steam_set_achievement("WORLD_1_QUICK") }
}}}