randomize()
image_alpha -= 0.05
y -= 1.5
if image_alpha < 0 {
room_restart()
game_save("Continue.sav")
}
x += random_range(2,-2)

