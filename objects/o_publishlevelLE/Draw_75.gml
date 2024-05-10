draw_set_alpha(0.5)
var directory = working_directory + "/LevelEditor Files/" + "/" + global.levelname + "//thumb.jpg"

draw_rectangle_color(0,0,1024,768,c_black,c_black,c_black,c_black,false)
draw_set_font(fnt_gamemode)
draw_set_alpha(1)
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_text(room_width/2,100,"Publish your level!")
draw_set_font(fnt_death)
if global.LEVerified = 1 {
if directory_exists(directory) {
if global.cheats = 0 {
if global.steam_api = true {
if steam_is_user_logged_on() {
if global.levelname != "" {
if global.LEDiamondMedalTime >= global.LESavedWinTime {
draw_set_color(c_lime)
draw_text(room_width/2,200,"You can publish your level on Steam Workshop!")
draw_set_color(c_yellow)
draw_text(room_width/2,230,"Read Rules before you do so! Otherwise mods will be very angry!")
if !instance_exists(o_readworkshoprulesLE) {
var button = instance_create(400,340,o_readworkshoprulesLE)
with button {
image_xscale = 45.8
image_yscale = 20.2
}}
if !instance_exists(o_publishlevelbuttonLE) {
var button = instance_create(400,460,o_publishlevelbuttonLE)
with button {
image_xscale = 45.8
image_yscale = 20.2
}}

} else { draw_text(room_width/2,200,"Diamond Medal Time must be the same or higher than your level completion time.")  }
} else { draw_text(room_width/2,200,"The level must have a name in order to be able to publish it on Steam Workshop!") }
} else { draw_text(room_width/2,200,"You must be logged on Steam to publish a level!") }
} else { draw_text(room_width/2,200,"Steam API must be enabled!") }
} else { draw_text(room_width/2,200,"Cheats must be disabled. Disable them by restarting the game.") }
} else { draw_text(room_width/2,200,"A Thumbnail is missing, take a picture of the level.") }
} else {
if !instance_exists(o_playerspawner) || !instance_exists(o_door) {
draw_text(room_width/2,200,"The level must have a player and a door placed in order to be able to publish\nit on Steam Workshop!")
} else {
draw_text(room_width/2,200,"Complete the Level in order to be able to publish it on Steam Workshop!")
}
}
draw_set_color(c_white)
draw_text(room_width/2,600,"You can press ENTER to leave!")
draw_set_halign(fa_left)