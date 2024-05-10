if global.multiplayerplayers = 1 { x = lerp(x,originalx,0.2 * (60 / global.maxfps)) } else {
	x = lerp(x,460,0.2 * (60 / global.maxfps))
	if global.chooseminigameMU = true { y = lerp(y,900,0.2 * (60 / global.maxfps)) } else { y = lerp(y,originaly,0.2 * (60 / global.maxfps)) }
}
global.skinMUlocked = false
global.hatMUlocked = false
global.itemMUlocked = false
if global.multiplayerplayercontrols[0] = global.multiplayerplayercontrols[1] { global.skinMUlocked = true }
if global.multiplayerplayercontrols[0] = global.multiplayerplayercontrols[2] { global.skinMUlocked = true }
if global.multiplayerplayercontrols[0] = global.multiplayerplayercontrols[3] { global.skinMUlocked = true }
if global.multiplayerplayercontrols[1] = global.multiplayerplayercontrols[2] { global.skinMUlocked = true }
if global.multiplayerplayercontrols[1] = global.multiplayerplayercontrols[3] { global.skinMUlocked = true }
if global.multiplayerplayercontrols[3] = global.multiplayerplayercontrols[2] { global.skinMUlocked = true }

switch(global.multiplayerplayerconfigchoose) {
case(1): multiplayerskin = global.multiplayerplayerskin[0] 
multiplayerhat = global.multiplayerplayerhat[0]
multiplayeritem = global.multiplayerplayeritem[0] break;
case(2): multiplayerskin = global.multiplayerplayerskin[1] 
multiplayerhat = global.multiplayerplayerhat[1]
multiplayeritem = global.multiplayerplayeritem[1] break;
case(3): multiplayerskin = global.multiplayerplayerskin[2]
multiplayerhat = global.multiplayerplayerhat[2]
multiplayeritem = global.multiplayerplayeritem[2] break;
case(4): multiplayerskin = global.multiplayerplayerskin[3]
multiplayerhat = global.multiplayerplayerhat[3]
multiplayeritem = global.multiplayerplayeritem[3] break;
}

//Skins Locked?
if global.skin002 = 0 {
if multiplayerskin = 1 { global.skinMUlocked = true }}
if global.skin003 = 0 {
if multiplayerskin = 2 { global.skinMUlocked = true }}
if global.skin004 = 0 {
if multiplayerskin = 3 { global.skinMUlocked = true }}
if global.skin005 = 0 {
if multiplayerskin = 4 { global.skinMUlocked = true }}
if global.skin006 = 0 {
if multiplayerskin = 5 { global.skinMUlocked = true }}
if global.skin007 = 0 {
if multiplayerskin = 6 { global.skinMUlocked = true }}
if global.skin008 = 0 {
if multiplayerskin = 7 { global.skinMUlocked = true }}
if global.skin009 = 0 {
if multiplayerskin = 8 { global.skinMUlocked = true }}
if global.skin010 = 0 {
if multiplayerskin = 9 { global.skinMUlocked = true }}
if global.skin011 = 0 {
if multiplayerskin = 10 { global.skinMUlocked = true }}
if global.skin012 = 0 {
if multiplayerskin = 11 { global.skinMUlocked = true }}
if global.skin013 = 0 {
if multiplayerskin = 12 { global.skinMUlocked = true }}
if global.skin014 = 0 {
if multiplayerskin = 13 { global.skinMUlocked = true }}
if global.skin015 = 0 {
if multiplayerskin = 14 { global.skinMUlocked = true }}
if global.skin016 = 0 {
if multiplayerskin = 15 { global.skinMUlocked = true }}
if global.skin017 = 0 {
if multiplayerskin = 16 { global.skinMUlocked = true }}
if global.skin018 = 0 {
if multiplayerskin = 17 { global.skinMUlocked = true }}
if global.skin019 = 0 {
if multiplayerskin = 18 { global.skinMUlocked = true }}
if global.skin020 = 0 {
if multiplayerskin = 19 { global.skinMUlocked = true }}
if global.skin021 = 0 {
if multiplayerskin = 20 { global.skinMUlocked = true }}
if global.skin022 = 0 {
if multiplayerskin = 21 { global.skinMUlocked = true }}
if global.skin023 = 0 {
if multiplayerskin = 22 { global.skinMUlocked = true }}
if global.skin024 = 0 {
if multiplayerskin = 23 { global.skinMUlocked = true }}
if global.skin025 = 0 {
if multiplayerskin = 24 { global.skinMUlocked = true }}
if global.skin026 = 0 {
if multiplayerskin = 25 { global.skinMUlocked = true }}
if global.skin027 = 0 {
if multiplayerskin = 26 { global.skinMUlocked = true }}
if global.skin028 = 0 {
if multiplayerskin = 27 { global.skinMUlocked = true }}
if global.skin029 = 0 {
if multiplayerskin = 28 { global.skinMUlocked = true }}
if global.skin030 = 0 {
if multiplayerskin = 29 { global.skinMUlocked = true }}
if global.skin031 = 0 {
if multiplayerskin = 30 { global.skinMUlocked = true }}
if global.skin032 = 0 {
if multiplayerskin = 31 { global.skinMUlocked = true }}
if global.skin033 = 0 {
if multiplayerskin = 32 { global.skinMUlocked = true }}
if global.skin034 = 0 {
if multiplayerskin = 33 { global.skinMUlocked = true }}
if global.skin035 = 0 {
if multiplayerskin = 34 { global.skinMUlocked = true }}
if global.skin036 = 0 {
if multiplayerskin = 35 { global.skinMUlocked = true }}
if global.skin037 = 0 {
if multiplayerskin = 36 { global.skinMUlocked = true }}
if global.skin038 = 0 {
if multiplayerskin = 37 { global.skinMUlocked = true }}
if global.skin039 = 0 {
if multiplayerskin = 38 { global.skinMUlocked = true }}
if global.skin040 = 0 {
if multiplayerskin = 39 { global.skinMUlocked = true }}
if global.skin041 = 0 {
if multiplayerskin = 40 { global.skinMUlocked = true }}
if global.skin042 = 0 {
if multiplayerskin = 41 { global.skinMUlocked = true }}
if global.skin043 = 0 {
if multiplayerskin = 42 { global.skinMUlocked = true }}
if global.skin044 = 0 {
if multiplayerskin = 43 { global.skinMUlocked = true }}
if global.skin045 = 0 {
if multiplayerskin = 44 { global.skinMUlocked = true }}
if global.skin046 = 0 {
if multiplayerskin = 45 { global.skinMUlocked = true }}

//Hats Locked?
if global.hat002 = 0 {
if multiplayerhat = 2 { global.hatMUlocked = true }}
if global.hat003 = 0 {
if multiplayerhat = 3 { global.hatMUlocked = true }}
if global.hat004 = 0 {
if multiplayerhat = 4 { global.hatMUlocked = true }}
if global.hat005 = 0 {
if multiplayerhat = 5 { global.hatMUlocked = true }}
if global.hat006 = 0 {
if multiplayerhat = 6 { global.hatMUlocked = true }}
if global.hat007 = 0 {
if multiplayerhat = 7 { global.hatMUlocked = true }}
if global.hat008 = 0 {
if multiplayerhat = 8 { global.hatMUlocked = true }}
if global.hat009 = 0 {
if multiplayerhat = 9 { global.hatMUlocked = true }}
if global.hat010 = 0 {
if multiplayerhat = 10 { global.hatMUlocked = true }}
if global.hat011 = 0 {
if multiplayerhat = 11 { global.hatMUlocked = true }}
if global.hat012 = 0 {
if multiplayerhat = 12 { global.hatMUlocked = true }}
if global.hat013 = 0 {
if multiplayerhat = 13 { global.hatMUlocked = true }}
if global.hat014 = 0 {
if multiplayerhat = 14 { global.hatMUlocked = true }}
if global.hat015 = 0 {
if multiplayerhat = 15 { global.hatMUlocked = true }}
if global.hat016 = 0 {
if multiplayerhat = 16 { global.hatMUlocked = true }}
if global.hat017 = 0 {
if multiplayerhat = 17 { global.hatMUlocked = true }}
if global.hat018 = 0 {
if multiplayerhat = 18 { global.hatMUlocked = true }}
if global.hat019 = 0 {
if multiplayerhat = 19 { global.hatMUlocked = true }}
if global.hat020 = 0 {
if multiplayerhat = 20 { global.hatMUlocked = true }}
if global.hat021 = 0 {
if multiplayerhat = 21 { global.hatMUlocked = true }}
if global.hat022 = 0 {
if multiplayerhat = 22 { global.hatMUlocked = true }}
if global.hat023 = 0 {
if multiplayerhat = 23 { global.hatMUlocked = true }}
if global.hat024 = 0 {
if multiplayerhat = 24 { global.hatMUlocked = true }}
if global.hat025 = 0 {
if multiplayerhat = 25 { global.hatMUlocked = true }}
if global.hat026 = 0 {
if multiplayerhat = 26 { global.hatMUlocked = true }}
if global.hat027 = 0 {
if multiplayerhat = 27 { global.hatMUlocked = true }}
if global.hat028 = 0 {
if multiplayerhat = 28 { global.hatMUlocked = true }}
if global.hat029 = 0 {
if multiplayerhat = 29 { global.hatMUlocked = true }}
if global.hat030 = 0 {
if multiplayerhat = 30 { global.hatMUlocked = true }}
if global.hat031 = 0 {
if multiplayerhat = 31 { global.hatMUlocked = true }}
if global.hat032 = 0 {
if multiplayerhat = 32 { global.hatMUlocked = true }}
if global.hat033 = 0 {
if multiplayerhat = 33 { global.hatMUlocked = true }}
if global.hat034 = 0 {
if multiplayerhat = 34 { global.hatMUlocked = true }}
if global.hat035 = 0 {
if multiplayerhat = 35 { global.hatMUlocked = true }}
if global.hat036 = 0 {
if multiplayerhat = 36 { global.hatMUlocked = true }}
if global.hat037 = 0 {
if multiplayerhat = 37 { global.hatMUlocked = true }}
if global.hat038 = 0 {
if multiplayerhat = 38 { global.hatMUlocked = true }}
if global.hat039 = 0 {
if multiplayerhat = 39 { global.hatMUlocked = true }}


//Items Locked
if global.item001 = 0 {
if multiplayeritem = 1 { global.itemMUlocked = true }}
if global.item002 = 0 {
if multiplayeritem = 2 { global.itemMUlocked = true }}



if global.skinMUlocked = true || global.hatMUlocked = true || global.itemMUlocked = true { 
	image_index = 0
	image_alpha = 0.5 
	} else { image_alpha = 1 }