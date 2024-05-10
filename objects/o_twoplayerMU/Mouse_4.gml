if global.multiplayerplayers = 1 {
global.multiplayerplayers = 2
instance_create(x,y,o_playerskinselectionMU)
instance_create(x,y,o_playerhatselectionMU)
if !instance_exists(o_skinsselectbuttonMU) {instance_create(176,320,o_skinsselectbuttonMU)}
if !instance_exists(o_hatsselectbuttonMU) {instance_create(256,320,o_hatsselectbuttonMU)}
}