if locked = 1 { exit }
var level = asset_get_index("r_c" + string(global.calendaryear) + "lvl" + string(day + (28 * (global.calendarmonth-1))))
global.calendar = 1
audio_play_sound(m_neoncolor,0,1)
room_goto(level)

global.calendarweek = week
global.calendarday = day
scr_loadrewardscalendar()

rousr_dissonance_set_details("Playing Calendar - Year: " + string(global.calendaryear) + " | Day: " + string(global.calendarday +  (28 * (global.calendarmonth-1))))

loadhud()