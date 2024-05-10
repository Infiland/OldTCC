image_angle = image_angle + animation
if direction_animation = 0 {
animation = animation + 0.04
}
if direction_animation = 1 {
animation = animation - 0.04
}
if animation > 1 {
direction_animation = 1
}
if animation < -1 {
direction_animation = 0
}

