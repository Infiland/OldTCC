//Controls
if instance_exists(o_leveleditorleaveask) { exit }
image_blend = c_white
x = (mouse_x div 32) * 32
y = (mouse_y div 32) * 32
image_alpha = 0
image_speed = 1

//IMPORTANT CHECK O_ANIMATEDLEICON
scr_leveleditorsprites()
image_blend = c_white
mask_index = s_block
if instance_exists(o_LETutorial) { sprite_index = s_cannotplace }
if y < 64 + camera_get_view_y(view_camera[0]) {
image_alpha = 0
sprite_index = s_cannotplace
}
if global.LEBuild = 1 {
if place_meeting(x,y,o_player) or place_meeting(x,y,o_playerspawner) or place_meeting(x,y,o_anyblock) or place_meeting(x,y,o_reditemLE) or place_meeting(x,y,o_yellowitemLE) or place_meeting(x,y,o_greenitemLE) or place_meeting(x,y,o_blueitemLE) or place_meeting(x,y,o_whiteitemLE) or place_meeting(x,y,o_spike) or place_meeting(x,y,o_spikeleft) or place_meeting(x,y,o_spiketop) or place_meeting(x,y,o_spikeright) or place_meeting(x,y,o_invspike) or place_meeting(x,y,o_invspikeleft) or place_meeting(x,y,o_invspiketop) or place_meeting(x,y,o_invspikeright) or place_meeting(x,y,o_gravity01LE) or place_meeting(x,y,o_gravity05LE) or place_meeting(x,y,o_specialcoinLE) or place_meeting(x,y,o_gravity15LE) or place_meeting(x,y,o_gravity25LE) or place_meeting(x,y,o_door) or place_meeting(x,y,o_shooterright) or place_meeting(x,y,o_shooter) or place_meeting(x,y,o_redspiralLE) or place_meeting(x,y,o_yellowspiralLE) or place_meeting(x,y,o_greenspiralLE) or place_meeting(x,y,o_bluespiralLE) or place_meeting(x,y,o_whitespiralLE) or place_meeting(x,y,o_speed7LE) or place_meeting(x,y,o_speed5LE) or place_meeting(x,y,o_speed10LE) or place_meeting(x,y,o_speed15LE) or place_meeting(x,y,o_redblockmoveLE) or place_meeting(x,y,o_yellowblockmoveLE) or place_meeting(x,y,o_greenblockmoveLE) or place_meeting(x,y,o_blueblockmoveLE) or place_meeting(x,y,o_whiteblockmoveLE) or place_meeting(x,y,o_keyLE) or place_meeting(x,y,o_portalpurpleclosed) or place_meeting(x,y,o_portalpurpleopen) or place_meeting(x,y,o_redpassblock) or place_meeting(x,y,o_yellowpassblock) or place_meeting(x,y,o_greenpassblock) or place_meeting(x,y,o_bluepassblock) or place_meeting(x,y,o_whitepassblock) or place_meeting(x,y,o_torchLE) or place_meeting(x,y,o_enemyplayerLE) or place_meeting(x,y,o_enemyplayer) or place_meeting(x,y,o_ladder) or place_meeting(x,y,o_rocketlauncher) or place_meeting(x,y,o_rocketlauncherright) or place_meeting(x,y,o_gunLE) or place_meeting(x,y,o_ammoLE) or place_meeting(x,y,o_ammoinfiniteLE) or place_meeting(x,y,o_boxLE) or place_meeting(x,y,o_iceblock) or place_meeting(x,y,o_deathblock) or place_meeting(x,y,o_blockcheck2) or place_meeting(x,y,o_boxwithammoLE) or place_meeting(x,y,o_boxwithinfiniteammoLE) or place_meeting(x,y,o_gravitylimit01) or place_meeting(x,y,o_gravitylimit05) or place_meeting(x,y,o_gravitylimit15) or place_meeting(x,y,o_gravitylimit25) or place_meeting(x,y,o_speedlimit5) or place_meeting(x,y,o_speedlimit7) or place_meeting(x,y,o_speedlimit10) or place_meeting(x,y,o_speedlimit15) or place_meeting(x,y,o_lockedblock) or place_meeting(x,y,o_unlockedblock) or place_meeting(x,y,o_oxygenitemLE) or place_meeting(x,y,o_spikemovingdownupLE) or place_meeting(x,y,o_spikemovingupdownLE) or place_meeting(x,y,o_spikemovingrightleftLE) or place_meeting(x,y,o_spikemovingleftrightLE) or place_meeting(x,y,o_HspikemovingupLE) or place_meeting(x,y,o_HspikemovingrightLE) or place_meeting(x,y,o_HspikemovingleftLE) or place_meeting(x,y,o_HspikemovingdownLE) or place_meeting(x,y,o_doublejumpitemLE) or place_meeting(x,y,o_redblockbreakableLE) or place_meeting(x,y,o_yellowblockbreakableLE) or place_meeting(x,y,o_greenblockbreakableLE) or place_meeting(x,y,o_blueblockbreakableLE) or place_meeting(x,y,o_whiteblockbreakableLE)  {
sprite_index = s_cannotplace
}}
if global.LEBuild = 2 {
if instance_position(x,y,o_redblock) or instance_position(x,y,o_yellowblock) or instance_position(x,y,o_greenblock) or instance_position(x,y,o_blueblock) or instance_position(x,y,o_whiteblock) or instance_position(x,y,o_iceblock) or instance_position(x,y,o_deathblock) or instance_position(x,y,o_boxLE) or instance_position(x,y,o_redblockbackground) or instance_position(x,y,o_yellowblockbackground) or instance_position(x,y,o_greenblockbackground) or instance_position(x,y,o_blueblockbackground) or instance_position(x,y,o_whiteblockbackground) or instance_position(x,y,o_redblockbackgroundslope) or instance_position(x,y,o_yellowblockbackgroundslope) or instance_position(x,y,o_greenblockbackgroundslope) or instance_position(x,y,o_blueblockbackgroundslope) or instance_position(x,y,o_whiteblockbackgroundslope) or instance_position(x,y,o_deathblockbackgroundslope) or instance_position(x,y,o_iceblockbackgroundslope) or instance_position(x,y,o_boxblockbackgroundslope) or instance_position(x,y,o_iceblockbackground)  or instance_position(x,y,o_deathblockbackground) or instance_position(x,y,o_boxbackground) or instance_position(x,y,o_onewaydownblock) or instance_position(x,y,o_onewayupblock) or instance_position(x,y,o_onewayleftblock) or instance_position(x,y,o_onewayrightblock){
sprite_index = s_cannotplace
}
}

//Checking
global.canchange = false
if global.LEBuild = 1 {
if global.LES = 6 or global.LES = 7 or global.LES = 8 or global.LES = 9 or global.LES = 10{
if place_meeting(x,y,o_playerspawner) or place_meeting(x,y,o_redblock) or place_meeting(x,y,o_yellowblock) or place_meeting(x,y,o_greenblock) or place_meeting(x,y,o_blueblock) or place_meeting(x,y,o_whiteblock){
	global.canchange = true
}}
if global.LES = 6 or global.LES = 7 or global.LES = 8 or global.LES = 9 {
if place_meeting(x,y,o_yellowpassblock) or place_meeting(x,y,o_redpassblock) or place_meeting(x,y,o_greenpassblock) or place_meeting(x,y,o_bluepassblock) {	
global.canchange = true
}}
if global.LES = 57 or global.LES = 58 {
if place_meeting(x,y,o_box)	 {
global.canchange = true
}}
if global.LES = 60 or global.LES = 58 {
if place_meeting(x,y,o_boxwithammo)	 {
global.canchange = true
}}
if global.LES = 60 or global.LES = 57 {
if place_meeting(x,y,o_boxwithinfiniteammo)	 {
global.canchange = true
}}
}
if global.LEBuild = 2 {
if place_meeting(x,y,o_redblockbackgroundslope) or place_meeting(x,y,o_yellowblockbackgroundslope) or place_meeting(x,y,o_greenblockbackgroundslope) or place_meeting(x,y,o_blueblockbackgroundslope) or place_meeting(x,y,o_whiteblockbackgroundslope) or place_meeting(x,y,o_iceblockbackgroundslope) or place_meeting(x,y,o_deathblockbackgroundslope) or place_meeting(x,y,o_boxblockbackgroundslope) {
global.canchange = true
}
}

if global.LEMode = 2 { image_alpha = 0 }