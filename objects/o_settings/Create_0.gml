depth = -16000
rotate = 0
pitch = 1

if room != r_mainmenu {
vx = 0
vy = 0
if instance_exists(o_smoothcamera) {
vx = camera_get_view_x(view_camera[0])
vy = camera_get_view_y(view_camera[0])
}

x = 960 + vx
y = 704 + vy
}
audio_sound_pitch(m_mainmenu,pitch)