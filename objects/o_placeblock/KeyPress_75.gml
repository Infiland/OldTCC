if instance_exists(o_leveleditorleaveask) { exit }

if global.LEMode = 1 {

if instance_exists(o_namelevelLE) { exit }

if global.writingmode = 0 {
if x < room_width {
if x >= 0 {
if y < room_width {
if y >= 45 {	
if !place_meeting(x,y,o_keyLE) {
instance_create(x,y,o_keyLE)
}}}}}}

}