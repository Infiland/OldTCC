function scr_savecalendar() {
if global.cheats = 0 {	
	var directory = working_directory + "/Save Files//Calendar/"
	if (file_exists(directory + "Calendar.sav")) file_delete(directory + "Calendar.sav");
	ini_open(directory + "Calendar.sav");
	
	ini_write_real("Calendar","2022",global.calendar2022unlock);
	ini_close();
	}

}