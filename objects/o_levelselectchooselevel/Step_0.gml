y = ystart - yscroll

if mouse_wheel_up() {
	yscroll -= 45 * (60 / global.maxfps)
}
if mouse_wheel_down() {
	yscroll += 45 * (60 / global.maxfps)
}

if yscroll < 0 { yscroll = 0 }
if yscroll > 500 { yscroll = 500 }