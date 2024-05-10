/// @description Click to start
if locked = 0 {
	with(o_animatedtext) {
text = self.text
}
global.calendarmonth = month
scr_loadrewardscalendar()

instance_create(x,y,o_calendarweekcounter)
instance_create(x,y,o_calendarbuttonmaker)
instance_create(x,y,o_calendarrewardmaker)
instance_destroy(o_monthbuttonC)
}