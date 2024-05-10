hp -= 1
if hp = 0 {
instance_destroy()
if room != r_leveleditor { global.totalenemykills += 1}
audio_play_sound(snd_troopdead,1,0)
}