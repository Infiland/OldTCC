draw_set_alpha(0.5)
draw_rectangle_color(0,0,1024,768,c_black,c_black,c_black,c_black,false)
draw_set_alpha(1)
draw_set_font(fnt_death)
numSub = steam_ugc_num_subscribed_items();
draw_text(16,740,"Current Number of Downloaded Maps: " + string(numSub))


/*
steam_list = ds_list_create();
steam_ugc_get_subscribed_items(steam_list);

var i
for (i=0; i < ds_list_size(steam_list); i++) {
draw_text(500,100,steam_list)
}