if global.LEMode = 2 {
image_alpha = 0
if !place_meeting(x,y,o_bluespiral) {
if !instance_exists(o_player) {
instance_create(x,y,o_bluespiral)
}}

} else {
image_alpha = 1
if instance_exists(o_bluespiral) { instance_destroy(o_bluespiral) }
}