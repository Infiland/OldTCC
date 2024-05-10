draw_set_alpha(0.5)
draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false)
draw_set_font(fnt_gamemode)
draw_set_alpha(1)
draw_set_halign(fa_center)

		/*var uploadMap = ds_map_create();
steam_ugc_get_item_update_progress(new_map, uploadMap);
var statusCode = uploadMap[? "status_code"];
var status = uploadMap[? "status_string"];
var processed = uploadMap[? "bytes_processed"];
var total = uploadMap[? "bytes_total"];
draw_text(16, 500, "Upload info for item:" + string(new_map));
draw_text(16, 515, "status code:" + string(statusCode));
draw_text(16, 530, "status:" + string(status));
draw_text(16, 545, "bytes processed:" +string(processed));
draw_text(16, 560, "bytes total:" + string( total));
ds_map_destroy(uploadMap);*/

switch(result) {
default: draw_text(room_width/2,350,"Uploading...") break;
case(0.1): draw_text(room_width/2,350,"Setting Title") break;
case(0.2): draw_text(room_width/2,350,"Setting Image") break;
case(0.3): draw_text(room_width/2,350,"Setting Description") break;
case(0.4): draw_text(room_width/2,350,"Setting the Level to be public!") break;
case(0.5): draw_text(room_width/2,350,"Uploading Level") break;
case(0.6): draw_text(room_width/2,350,"Setting Tags") break;
case(0.7): draw_text(room_width/2,350,"Finishing up!") break;
case(1): draw_text(room_width/2,350,"Level Published!")
draw_text(room_width/2,410,"Publish ID: " + string(global.Publish_ID))
timer -= 1 * (60 /global.maxfps)
break;
case(2): draw_text(room_width/2,350,"Failed cuz you didn't accept the\nLegal Agreement!")
timer -= 1 * (60 /global.maxfps)
break;
case(3): draw_text(room_width/2,350,"You need to be connected on Steam!")
timer -= 1 * (60 /global.maxfps)
break;
case(4): draw_text(room_width/2,350,"Uploading Failed!")
timer -= 1 * (60 /global.maxfps)
break;
case(5): draw_text(room_width/2,350,"Thumbnail Missing!")
timer -= 1 * (60 /global.maxfps)
break;
case(6): draw_text(room_width/2,350,"Not yet son")
timer -= 1 * (60 /global.maxfps)
break;
}
draw_set_halign(fa_left)

if timer < 0 { instance_destroy() }