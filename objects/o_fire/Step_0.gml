if room != r_leveleditor {
if instance_exists(o_player) {
x = o_player.x
y = o_player.y
} if instance_exists(o_playerdead) {
x = o_playerdead.x
y = o_playerdead.y
}}

if room = r_leveleditor {
if instance_exists(o_player) {
x = o_player.x
y = o_player.y
}
if !instance_exists(o_player) {
instance_destroy()	
}}