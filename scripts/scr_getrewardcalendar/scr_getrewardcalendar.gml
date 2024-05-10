function scr_getrewardcalendar(month,week){
switch(global.calendaryear) {
case(2022):	
	switch(month) {
	case(1):
	if week = 1 { if global.skin046 = 0 {global.skin046 = 1}}
	if week = 2 { if room != r_calendar {global.creditscurrency += 25}}
    if week = 3 { if global.item001 = 0 {global.item001 = 1}}
	if week = 4 { if global.hat039 = 0 {global.hat039 = 1}}
	break;
	case(2):
	if week = 1 { if global.skin047 = 0 {global.skin047 = 1}}
	if week = 2 { if room != r_calendar {global.creditscurrency += 50}}
    if week = 3 { if global.item002 = 0 {global.item002 = 1}}
	if week = 4 { if global.hat039 = 0 {global.hat039 = 1}}
	break;
	}
break;
}
}