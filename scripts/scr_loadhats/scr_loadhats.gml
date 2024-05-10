function scr_loadhats() {
if global.cheats = 0 {
	var directory = working_directory + "/Save Files/"
	if (file_exists(directory + "Hats.sav")) {
	ini_open(directory + "Hats.sav");
	global.hatselected = ini_read_real("Hats","Selected Hat",0)
	global.hat001 = ini_read_real("Hats","Graduated Hat",-1)
	global.hat002 = ini_read_real("Hats","Cone Hat",0)
	global.hat003 = ini_read_real("Hats","Party Hat",-1)
	global.hat004 = ini_read_real("Hats","Paper Hat",0)
	global.hat005 = ini_read_real("Hats","Top Hat",0)
	global.hat006 = ini_read_real("Hats","Yellow Top Hat",0)
	global.hat007 = ini_read_real("Hats","Reddie Hat",0)
	global.hat008 = ini_read_real("Hats","Christmas Hat",-1)
	global.hat009 = ini_read_real("Hats","Witch Hat",-1)
	global.hat010 = ini_read_real("Hats","Pumpkin Hat",-1)
	global.hat011 = ini_read_real("Hats","Brown Cap",0)
	global.hat012 = ini_read_real("Hats","Gray Cap",0)
	global.hat013 = ini_read_real("Hats","White Cap",0)
	global.hat014 = ini_read_real("Hats","Sun Hat",0)
	global.hat015 = ini_read_real("Hats","Red Block Hat",0)
	global.hat016 = ini_read_real("Hats","Yellow Block Hat",0)
	global.hat017 = ini_read_real("Hats","Green Block Hat",0)
	global.hat018 = ini_read_real("Hats","Blue Block Hat",0)
	global.hat019 = ini_read_real("Hats","White Block Hat",0)
	global.hat020 = ini_read_real("Hats","Spike Hat",0)
	global.hat021 = ini_read_real("Hats","Invisible Spike Hat",0)
	global.hat022 = ini_read_real("Hats","Vertical Moving Spike Hat",0)
	global.hat023 = ini_read_real("Hats","Horizontal Moving Spike Hat",0)
	global.hat024 = ini_read_real("Hats","Hexagon Hat",0)
	global.hat025 = ini_read_real("Hats","Bread Hat",0)
	global.hat026 = ini_read_real("Hats","Soldier Hat",0)
	global.hat027 = ini_read_real("Hats","Samurai Hat",0)
	global.hat028 = ini_read_real("Hats","Red Beanie Hat",0)
	global.hat029 = ini_read_real("Hats","Yellow Beanie Hat",0)
	global.hat030 = ini_read_real("Hats","Green Beanie Hat",0)
	global.hat031 = ini_read_real("Hats","Blue Beanie Hat",0)
	global.hat032 = ini_read_real("Hats","Pirate Hat",0)
	}
	else {
	}
	
	}

}