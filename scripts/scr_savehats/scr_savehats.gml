function scr_savehats() {
if global.cheats = 0 {
	var directory = working_directory + "/Save Files/"
	if (file_exists(directory + "Hats.sav")) file_delete(directory + "Hats.sav");
	ini_open(directory +"Hats.sav");
	//Hats
	ini_write_real("Hats","Selected Hat",global.hatselected);
	ini_write_real("Hats","Graduated Hat",global.hat001);
	ini_write_real("Hats","Cone Hat",global.hat002);
	ini_write_real("Hats","Party Hat",global.hat003);
	ini_write_real("Hats","Paper Hat",global.hat004);
	ini_write_real("Hats","Top Hat",global.hat005);
	ini_write_real("Hats","Yellow Top Hat",global.hat006);
	ini_write_real("Hats","Reddie Hat",global.hat007);
	ini_write_real("Hats","Christmas Hat",global.hat008);
	ini_write_real("Hats","Witch Hat",global.hat009);
	ini_write_real("Hats","Pumpkin Hat",global.hat010);
	ini_write_real("Hats","Brown Cap",global.hat011);
	ini_write_real("Hats","Gray Cap",global.hat012);
	ini_write_real("Hats","White Cap",global.hat013);
	ini_write_real("Hats","Sun Hat",global.hat014);
	ini_write_real("Hats","Red Block Hat",global.hat015);
	ini_write_real("Hats","Yellow Block Hat",global.hat016);
	ini_write_real("Hats","Green Block Hat",global.hat017);
	ini_write_real("Hats","Blue Block Hat",global.hat018);
	ini_write_real("Hats","White Block Hat",global.hat019);
	ini_write_real("Hats","Spike Hat",global.hat020);
	ini_write_real("Hats","Invisible Spike Hat",global.hat021);
	ini_write_real("Hats","Vertical Moving Spike Hat",global.hat022);
	ini_write_real("Hats","Horizontal Moving Spike Hat",global.hat023);
	ini_write_real("Hats","Hexagon Hat",global.hat024);
	ini_write_real("Hats","Bread Hat",global.hat025);
	ini_write_real("Hats","Soldier Hat",global.hat026);
	ini_write_real("Hats","Samurai Hat",global.hat027);
	ini_write_real("Hats","Red Beanie Hat",global.hat028);
	ini_write_real("Hats","Yellow Beanie Hat",global.hat029);
	ini_write_real("Hats","Green Beanie Hat",global.hat030);
	ini_write_real("Hats","Blue Beanie Hat",global.hat031);
	ini_write_real("Hats","Pirate Hat",global.hat032);
	ini_close();

}
}