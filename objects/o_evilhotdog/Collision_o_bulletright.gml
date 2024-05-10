image_speed = 1
sprite_index = s_evilhotdoghit
audio_play_sound(snd_hitboss,5,0)
hp -= 1
if hp = 0 {
instance_create(x,y,o_explosion)
instance_destroy()
global.boss1 = 1
audio_play_sound(snd_explosionboss,0,0)
audio_stop_sound(m_bosstime)
}
littlepause = 1
alarm[1] = 25

