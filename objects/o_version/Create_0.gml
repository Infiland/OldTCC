/// @description Game's Version
randomize()

r_str = "0"

get = http_get("https://api.steampowered.com/ISteamUserStats/GetNumberOfCurrentPlayers/v1/?appid=1651680");


if global.challenges = 1749610 {
version = "Demo"	
} else {
version = "Beta 1.8.1"	
}
rousr_dissonance_set_large_image("icon_bigger","Version - "+ string(version))
rousr_dissonance_set_details("In Main Menu")
window_set_caption("The Colorful Creature | " + version)
diffmonth = date_month_span(date_create_datetime(2018, 9, 3, 15, 30, 27 ), date_current_datetime());
diffyear = date_year_span(date_create_datetime(2018, 9, 3, 15, 30, 27 ), date_current_datetime());
diffsecond = date_second_span(date_create_datetime(2018, 9, 3, 15, 30, 27 ), date_current_datetime());
diffyearinfi = date_year_span(date_create_datetime(2003, 11, 18, 01, 30, 30 ), date_current_datetime());
clicked = false
//Go to o_richpresence
rng = 0
somethingwillhappen = irandom_range(100,500)

//scr_name[1] = ""

//var dircustomsplash = working_directory + "/Custom/Custom Splash Texts.txt"
//scr_name[1] = file_text_read_string(dircustomsplash);

/*var file = file_text_open_read(dircustomsplash);
for (var i = 0; i < 10; i++;)
   {
	   file_text_read_string(file);
   file_text_readln(file);
   }
   file_text_close(file)
if file_exists(dircustomsplash) {
var file = file_text_open_read(dircustomsplash);

for (var i = 0; i < 10; i++;)
    {
    scr_name[i] = file_text_read_string(file);
    file_text_readln(file);
    }
}*/

splash = irandom_range(1,547)

//TCC Anniversary
if current_day = 3 {
if current_month = 9 {
splash = -1	
}}
//April Fools
if current_day = 1 {
if current_month = 4 {
splash = -2
}}
//Birthday
if current_day = 18 {
if current_month = 11 {
splash = -3
}}
//Halloween
if current_day = 31 {
if current_month = 10 {
splash = -4
}}
//Christmas
if current_day >= 25 {
if current_month = 12 {
splash = irandom_range(-5,-18)
}}
if current_day <= 7 {
if current_month = 1 {
splash = irandom_range(-5,-18)
}}


//Special Rainbow colors!
red = 255
green = 0
blue = 0
change = 0

alarm[0] = 1000