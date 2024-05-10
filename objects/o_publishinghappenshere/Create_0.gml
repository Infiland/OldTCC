result = 0
timer = 120
//var app_id = "1651680"
var directory = working_directory + "/LevelEditor Files/" + "/" + global.levelname + "/"
image = directory + "/thumb.jpg"
new_item = steam_ugc_create_item(global.appid, ugc_filetype_community);
//steam_send_screenshot(image,window_get_width(), window_get_height())

if global.LELevelHeightBlocks != 22 {
result = 6	
}
if global.LELevelWidthBlocks != 32 {
result = 6	
}