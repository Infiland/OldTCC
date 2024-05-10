scr_loadsettings()
window_set_cursor(cr_default)

hsp = 0; //Horizontal
vsp = 0; //Vertical
grv = 0.5 //Gravity
walksp = 4; //Speed
realwalk = 0 //Total Speed
onice = false
if instance_place(x,y+32,o_iceblock) {
onice = true	
}
teleportcooldown = 0
portallast = 0
whiteplayer = 0
image_speed = 0
passblockcooldown = 0
torchcount = 0
firedeath = 10
tearcooldown = 5
goldcooldown = 5
red = 255
green = 0
blue = 0
change = 0
move = 0
inwater = 1 //1 = not in water, 2 = in water
breath = 500

color = c_white

if room = r_leveleditor {
global.LESavedWinTime = 0
global.color = global.defaultcolorLE	
} else {
global.color = 0;	
}

global.gunammo = 0
global.gunammoinfinite = false

//Checkpoint system
if global.checkpointX != 0 {
x = global.checkpointX
}
if global.checkpointY != 0 {
y = global.checkpointY
}
if global.checkpointCOLOR != -1 {
global.color = global.checkpointCOLOR	
}
if global.checkpointGRV != 0 {
grv = global.checkpointGRV
}
if global.checkpointAMMO != 0 {
global.gunammo = global.checkpointAMMO
}

switch(global.color) {
case(0): rousr_dissonance_set_small_image("red","Currently Red Color") break;
case(1): rousr_dissonance_set_small_image("yellow","Currently Yellow Color") break;
case(2): rousr_dissonance_set_small_image("green","Currently Green Color") break;
case(3): rousr_dissonance_set_small_image("blue","Currently Blue Color") break;
case(4): rousr_dissonance_set_small_image("white","Currently White Color") break;
}
audio_stop_sound(snd_explosionboss)
xchange = 0
ychange = 0
jumptestdebug = false
jumptest = 0
jumptest2 = 0
rotation = 0
lightbomberframe = 0

doublejump = 0

//Skins
switch(global.skinselected) {
case 14:
sprite_index = s_kindadeadplayerskin
break;
case 16:
if !instance_exists(o_paintbrush) {instance_create(x,y,o_paintbrush)}
break;
case 23: sprite_index = s_forseneplayerskin break;
case 24:
xchange += 16
ychange += 16
sprite_index = s_redballplayerskin
break;
case 26: sprite_index = s_hitboxplayerskin break;
case 27: sprite_index = s_metallicplayerskin break;
case 28: sprite_index = s_playerwhite break;
case 29: sprite_index = s_japaneseplayerskin break;
case 31: sprite_index = s_upsidedownplayerskin break;
case 36: sprite_index = s_arrowplayerskin break;
case 37: sprite_index = s_spikeplayerskin break;
case 38: sprite_index = s_splitplayerskin break;
}

if global.hardmode = 0 {
if global.challenges = 0 {
if global.endless = 0 {
if room != r_leveleditor {
scr_savegame()
}}}}
musicandsoundvolumefix()
audio_stop_sound(m_mainmenu);
audio_stop_sound(m_funmodemusic);

//Particles
par_walktimer = 12 * (60 / global.maxfps)

//Animated
eyesX = 0
eyesY = 0
basesize = 1
changesizeanimated = 0
randomblinking = 300
blinkinganimatioon = 0

//Googly
googlyeyesrot = 0
googlyeyesrotreal = 0
randomeeyerotationR = 0
randomeeyerotationL = 0

//Spiral
spiraleyerot = 0

//Heart
if instance_exists(o_door) {
heartbump = distance_to_object(o_door)
} else { heartbump = 120 }
hearteyeincrease = 1

/*Colors:
Red = 0 | Yellow = 1 | Green = 2 | Blue = 3 | White = 4 |*/

//Controls
global.controlsmoveright = string_upper(global.controlsmoveright)
global.controlsmoveleft = string_upper(global.controlsmoveleft)
global.controlsjump = string_upper(global.controlsjump)
scr_playercontrolsconfig()

//Endless Death Check
if global.endless = 1 {
if global.infinitelivessettings = 0 {
if global.deaths > global.hardmodelives - 1 {
global.endless = 0
audio_stop_all()
room_goto(r_endlessrunmenu)
instance_destroy(o_levelcounter)

if global.endlessrunmode = 1 {
if global.newendlesslevelhighscore < global.endlesslevel {
global.newendlesslevelhighscore = global.endlesslevel
steam_upload_score("Endless Run", global.newendlesslevelhighscore);
}}
if global.endlessrunmode = 2 {
if global.endlesslevelhighscore < global.endlesslevel {
global.endlesslevelhighscore = global.endlesslevel
steam_upload_score("Old School Endless Run", global.endlesslevelhighscore);
}}

if global.endlessrunmode != 3 {
if global.skin022 = 0 {
if global.endlesslevelhighscore > 49 || global.newendlesslevelhighscore > 49 {
global.skin022 = 1
}}}

scr_saveendless()
if global.endlessrunmode != 3 {
global.creditscurrency += floor(global.endlesslevel / 2)
} else { global.creditscurrency += floor(global.endlesslevel / 5) }
scr_savestats()
global.endlesslevel = 0
global.time = 0
hidehud()
rousr_dissonance_set_timestamps(undefined,undefined)
}} else { global.hardmodelives = "Infinite" }

}

global.playermove = 0
depth = 1;
instance_destroy(o_bulletleft);
instance_destroy(o_bulletright);
if global.pickup = 1 {
global.special -= 1
global.pickup = 0
}

alarm[0] = 1 * (global.maxfps / 60 )