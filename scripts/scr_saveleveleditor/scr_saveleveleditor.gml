function scr_saveleveleditor() {

	var directory = working_directory + "/LevelEditor Files/" + "/" + global.levelname + "/"
	if !directory_exists(directory) {directory_create(directory)}

	//Level Editor Version
	if (file_exists(directory + "OtherLevelEditor.sav")) file_delete(directory + "OtherLevelEditor.sav");
	ini_open(directory + "OtherLevelEditor.sav");
	ini_write_string("Other LE","Text",global.leveleditorstring);
	ini_write_string("Other LE","Music",global.leveleditormusic);
	ini_write_string("Other LE","Version",global.leveleditorversion);
	ini_write_string("Other LE","Name",global.levelname);
	ini_write_real("Other LE","Default Starting Color",global.defaultcolorLE)
	ini_write_real("Other LE","Background",global.LEBackground)
	ini_write_real("Other LE","Star Rotation",global.LEStarRotation)
	ini_write_real("Other LE","Diamond Medal Time",global.LEDiamondMedalTime)
	ini_close();
		
	//Create root list
	var _root_list = ds_list_create();
	//for every instance
	with(o_leveleditorloadplacement){
	var _map = ds_map_create();
	ds_list_add(_root_list,_map);
	ds_list_mark_as_map(_root_list,ds_list_size(_root_list)-1);
	var _obj = object_get_name(object_index)
	ds_map_add(_map,"obj",_obj);
	ds_map_add(_map,"x",x);
	ds_map_add(_map,"y",y);
	if global.leveleditorversion > 1 {
	ds_map_add(_map,"imageindex",image_index);
	ds_map_add(_map,"xscale",image_xscale);
	ds_map_add(_map,"yscale",image_yscale);
	}
	}

	//Wrap the root list up in the map
	var _wrapper = ds_map_create();
	ds_map_add_list(_wrapper,"ROOT",_root_list);
	//Save all of this to a string
	var _string = json_encode(_wrapper);
	SaveStringToFile(directory + "LevelEditor.sav",_string)

	//Nuke the data
	ds_map_destroy(_wrapper);
}
