/// @description Click to start
global.calendaryear = 2022
if locked = 0 {
room_goto(r_calendar)
} else {
klik -= 1
if klik = 0 {room_goto(r_calendar)}
}