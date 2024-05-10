if instance_exists(o_leveleditorleaveask) { exit }

if global.LEMode = 1 {

if instance_exists(o_namelevelLE) { exit }

if global.writingmode = 0 {
if x < room_width {
if x >= 0 {
if y < room_height {
if y >= 80 + camera_get_view_y(view_camera[0]) {
	global.LEVerified = 0
instance_destroy(o_door);
instance_destroy(o_lockeddoor);
instance_create(x,y-32,o_door)
}}}}}

}