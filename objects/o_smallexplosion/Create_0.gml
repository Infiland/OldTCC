if global.rocketexplosionsound = 0 {
audio_sound_gain(snd_smallexplosion,global.soundvolume/2,1)
audio_play_sound(snd_smallexplosion,0,0)
global.rocketexplosionsound += 0.02
}