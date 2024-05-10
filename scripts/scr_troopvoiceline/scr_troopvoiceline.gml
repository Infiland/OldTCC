function scr_troopvoiceline() {
	if global.troopvoicelinesettings = 1 {
	rng = 0
	randomize();
	if !audio_is_playing(snd_troopidle1) or !audio_is_playing(snd_troopidle2) or !audio_is_playing(snd_troopattack3) or !audio_is_playing(snd_troopattack2) or !audio_is_playing(snd_troopattack1) {
	if state = 0 or state = 2{
	rng = irandom_range(0,6)
	if rng = 0 {audio_play_sound(snd_troopidle1,0,0) }
	if rng = 1 {audio_play_sound(snd_troopidle2,0,0) }
	if rng = 2 {audio_play_sound(snd_troopidle3,0,0) }
	if rng = 3 {audio_play_sound(snd_troopidle4,0,0) }
	if rng = 4 {audio_play_sound(snd_troopidle5,0,0) }
	if rng = 5 {audio_play_sound(snd_troopidle6,0,0) }
	if rng = 6 {audio_play_sound(snd_troopidle7,0,0) }
	}
	if state = 1 {
	rng = irandom_range(0,7)
	if rng = 0 {audio_play_sound(snd_troopattack1,0,0) }
	if rng = 1 {audio_play_sound(snd_troopattack2,0,0) }
	if rng = 2 {audio_play_sound(snd_troopattack3,0,0) }
	if rng = 3 {audio_play_sound(snd_troopattack4,0,0) }
	if rng = 4 {audio_play_sound(snd_troopattack5,0,0) }
	if rng = 5 {audio_play_sound(snd_troopattack6,0,0) }
	if rng = 6 {audio_play_sound(snd_troopattack7,0,0) }
	if rng = 7 {audio_play_sound(snd_troopattack8,0,0) }
	}
	}
	troopsound = irandom_range(200* (60 / global.maxfps),500* (60 / global.maxfps))
	}


}
