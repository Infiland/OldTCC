function scr_loadcustomlevelworkshop() {
	



var directory = "C:/Program Files (x86)/Steam/steamapps/workshop/content/1651680/" + string(global.Publish_ID)
	
	if (file_exists(directory + "OtherLevelEditor.sav")) {
	ini_open(directory + "OtherLevelEditor.sav");
	global.leveleditorstring = ini_read_string("Other LE","Text","");
	global.leveleditormusic = ini_read_string("Other LE","Music","");
	global.leveleditorversion = ini_read_string("Other LE","Version","");
	global.levelname = ini_read_string("Other LE","Name","");
	global.defaultcolorLE = ini_read_real("Other LE","Default Starting Color",0);
	global.LEBackground = ini_read_real("Other LE","Background",0);
	global.LEStarRotation = ini_read_real("Other LE","Star Rotation",0);
	global.LEDiamondMedalTime = ini_read_real("Other LE","Diamond Medal Time",35);
	ini_close();
	}
	
	rousr_dissonance_set_details("Playing a workshop Level - " + global.levelname)
	
	layer = layer_create(-100)
	with(o_leveleditorloadplacement) instance_destroy();
	if file_exists(directory + "LevelEditor.sav") {
	var _wrapper = LoadJSONFromFile(directory + "LevelEditor.sav");
	var _list = _wrapper[? "ROOT"]; //var list = ds_map_find_value(_wrapper,"ROOT")
	for (var i=0;i < ds_list_size(_list);i++) {
	var _map = _list[| i] //var _map = ds_list_find_value(_list,i)
	var _obj = _map[? "obj"];
	with(instance_create_layer(0,0,layer,asset_get_index(_obj))) {
	x = _map[? "x"]
	y = _map[? "y"]
	if global.leveleditorversion > 1 {
	image_index = _map[? "imageindex"]
	image_xscale = _map[? "xscale"]
	image_yscale = _map[? "yscale"]
	}
	}
	}
	ds_map_destroy(_wrapper)
	}


}