if global.steam_api = true {
if !instance_exists(o_showsubscribedlevels) {
instance_create(x,y,o_showsubscribedlevels)	
}

steam_list = ds_list_create();
steam_ugc_get_subscribed_items(steam_list);

var i,steamlevel
for (i=0; i < ds_list_size(steam_list); i++) {
steamlevel = ds_list_find_value(steam_list,i)
var button = instance_create((room_width/2)-100,150 + (i* 95), o_customlevelworkshopbuttonplay)
with(button) {
level = steamlevel
}
if i < 5 {
global.customlevelsscrollmax += 90	
}
}

}


//for (i=0; i <ds_list_size(steam_list); i++) {