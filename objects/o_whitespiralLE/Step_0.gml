if global.LEMode = 2 {
image_alpha = 0
if !place_meeting(x,y,o_whitespiral) {
if !instance_exists(o_player) {
instance_create(x,y,o_whitespiral)
}}

} else {
image_alpha = 1
if instance_exists(o_whitespiral) { instance_destroy(o_whitespiral) }
}