function scr_saveworkshopmedals() {
if global.cheats = 0 {
	var directory = working_directory + "/Custom/Workshop/Medals/" + string(global.Publish_ID) + "/"
	var previoustime = 9999999
	
	if (file_exists(directory + "MedalData.sav")) {
	ini_open(directory + "MedalData.sav");
	previoustime = ini_read_real("Medal Data","Time",9999999);
	} else { }
	
	
	if (file_exists(directory + "MedalData.sav")) file_delete(directory + "MedalData.sav");
	ini_open(directory + "MedalData.sav");
	ini_write_real("Medal Data","Required Time",global.LEDiamondMedalTime);
	if previoustime > global.time { 
	ini_write_real("Medal Data","Time",global.time);
	global.creditscurrency += floor(1 * global.creditsmultiplier)
	} else { 
		ini_write_real("Medal Data","Time",previoustime); 
	}
	ini_close();
	}

}
