function scr_items(){
//Items Moving
itemtimer -= (walksp / 4) * (60 / global.maxfps)

if itemtimer < 0 { itemtimer = 80 }
if itemtimer < 40 { itemrot = lerp(itemrot,-350,0.1 * (60 / global.maxfps)) }
if itemtimer < 80 { itemrot = lerp(itemrot,-10,0.1 * (60 / global.maxfps)) }

var item = global.itemselected
if instance_exists(o_playerMU) {
	item = multiplayerplayeritem
}

//Items
switch(item) {
case(1): draw_sprite_ext(s_paintbrushitem,0,x,y+(20*itemscale),itemscale,itemscale,itemrot,c_white,1) break;
case(2): draw_sprite_ext(s_floweritem,0,x,y+(20*itemscale),itemscale,itemscale,itemrot,c_white,1) break;
}
}