function scr_back(){
if !instance_exists(o_settingspausemenu) {
if global.endless = 1 {
audio_stop_all()
room_goto(r_endlessrunmenu)
instance_destroy(o_levelcounter)
if global.infinitelivessettings = 0 {
	
if global.endlessrunmode = 1 {
if global.newendlesslevelhighscore < global.endlesslevel {
global.newendlesslevelhighscore = global.endlesslevel
}}
if global.endlessrunmode = 2 {
if global.endlesslevelhighscore < global.endlesslevel {
global.endlesslevelhighscore = global.endlesslevel
}}

if global.endlessrunmode != 3 {
if global.skin022 = 0 {
if global.endlesslevelhighscore > 49 || global.newendlesslevelhighscore > 49 {
global.skin022 = 1
}}}

scr_saveendless()
if global.endlessrunmode != 3 {
global.creditscurrency += floor(global.endlesslevel / 2)
} else { global.creditscurrency += floor(global.endlesslevel / 5) }
scr_savestats()
global.endlesslevel = 0

}
hidehud()
rousr_dissonance_set_timestamps(undefined,undefined)
global.endless = 0
}}
if room = r_support {room_goto(r_mainmenu)	}
if room = r_stats {room_goto(r_mainmenu)	}
if room = r_achievements {room_goto(r_mainmenu)	}
if room = r_onlineleaderboard {room_goto(r_funmodemenu)}
if room = r_calendar {room_goto(r_funmodemenu)}
if room = r_localmultiplayermenu {
if global.multiplayerplayers = 1 {
audio_sound_gain(m_funmodemusic,global.musicvolume,1000)
audio_sound_gain(m_justonline,0,1000)
room_goto(r_funmodemenu)
}
if global.chooseminigameMU = false {
if global.multiplayerplayerconfigchoose != 1 {
	global.multiplayerplayerconfigchoose -= 1 
if global.multiplayerplayerconfigchoose = 1 {global.multiplayerplayercontrols[1] = -1}
if global.multiplayerplayerconfigchoose = 2 {global.multiplayerplayercontrols[2] = -2}
if global.multiplayerplayerconfigchoose = 3 {global.multiplayerplayercontrols[3] = -3}
	} else {
global.multiplayerplayers = 1
instance_destroy(o_playerskinselectionMU)
instance_destroy(o_playerhatselectionMU)
instance_destroy(o_skinsselectbuttonMU)
instance_destroy(o_hatsselectbuttonMU)
}}
if global.chooseminigameMU = true { 
global.multiplayerplayerconfigchoose -= 1
global.chooseminigameMU = false
if !instance_exists(o_playerskinselectionMU) {instance_create(x,y,o_playerskinselectionMU)}
if !instance_exists(o_playerhatselectionMU) {instance_create(x,y,o_playerhatselectionMU)}
if !instance_exists(o_skinsselectbuttonMU) {instance_create(176,320,o_skinsselectbuttonMU)}
if !instance_exists(o_hatsselectbuttonMU) {instance_create(256,320,o_hatsselectbuttonMU)}
}
}
if room = r_settings {
global.infosettings = 0
if global.choosesettings = 0 {
scr_savesettings()
room_goto(r_mainmenu)	
}
if global.choosesettings > 0 {
global.choosesettings = 0
scr_TRadjustoptions()
scr_savesettings()
}
}
if room = r_kaizowin {
room_goto(r_mainmenu)
audio_play_sound(m_mainmenu,0,1)
}
if room = r_blindwin {
room_goto(r_mainmenu)	
audio_play_sound(m_mainmenu,0,1)
}
if room = r_bigroomwin {
room_goto(r_mainmenu)	
audio_play_sound(m_mainmenu,0,1)
}
if room = r_troopwin {
room_goto(r_mainmenu)	
audio_play_sound(m_mainmenu,0,1)
}
if room = r_slipperywin {
room_goto(r_mainmenu)	
audio_play_sound(m_mainmenu,0,1)
}
if room = r_speedwin {
room_goto(r_mainmenu)	
audio_play_sound(m_mainmenu,0,1)
}
if room = r_world6win {
room_goto(r_mainmenu)	
audio_play_sound(m_mainmenu,0,1)
}
if room = r_ladderwin {
room_goto(r_mainmenu)	
audio_play_sound(m_mainmenu,0,1)
}
if room = r_tutorialchallengewin {
room_goto(r_mainmenu)	
audio_play_sound(m_mainmenu,0,1)
}
if room = r_spikewin {
room_goto(r_mainmenu)	
audio_play_sound(m_mainmenu,0,1)
}
if room = r_waterwin {
room_goto(r_mainmenu)	
audio_play_sound(m_mainmenu,0,1)
}
if room = r_movingwin {
room_goto(r_mainmenu)	
audio_play_sound(m_mainmenu,0,1)
}
if room = r_communitywin {
room_goto(r_mainmenu)	
audio_play_sound(m_mainmenu,0,1)
}
if room = r_djwin {
room_goto(r_mainmenu)	
audio_play_sound(m_mainmenu,0,1)
}
if room = r_cswin {
room_goto(r_mainmenu)	
audio_play_sound(m_mainmenu,0,1)
}
if room = r_world7win {
room_goto(r_mainmenu)	
audio_play_sound(m_mainmenu,0,1)
}
if room = r_hardmodediff {
global.hardmode = 0
room_goto(r_gamemode)
}
if room = r_skinmenu {
room_goto(r_funmodemenu)	
}
if room = r_challenges {
room_goto(r_funmodemenu)
}
if room = r_customlevelmenu {
room_goto(r_funmodemenu)
}
if room = r_endlessrunmenu {
if global.CESConfigure = 0 {room_goto(r_funmodemenu)}
else if global.CESConfigure > 1 {global.CESConfigure = 1
instance_destroy(o_CERscroll) }
else if global.CESConfigure = 1 {
	global.CESConfigure = 0
	if instance_exists(o_animatedtext) {
	o_animatedtext.text = "Endless Run"	
	}
	instance_deactivate_object(o_CERSettings)
	instance_activate_object(o_endlessbutton)
	instance_activate_object(o_oldendlessbutton)
	instance_activate_object(o_customendlessbutton)
	}
}
if room = r_leveleditor {
if !instance_exists(o_leveleditorleaveask) {
instance_create(x,y,o_leveleditorleaveask)
}
}
if instance_exists(o_pausescreen) {
if global.pause = 1 {
audio_stop_all()
global.boss1 = 0
global.boss2 = 0
global.boss2health = 6
global.hardmode = 0
global.hardmodedifficulty = 0
global.pause = 0
global.time = 0
global.deaths = 0
global.gunammo = 0
hidehud()
instance_destroy(o_smoothcamera)
audio_group_set_gain(Music,global.musicvolume,1000)
rousr_dissonance_set_timestamps(undefined,undefined)
if global.chooseminigameMU = false {
if global.challenges = 0 {
if global.endless = 0 {
	audio_sound_gain(m_mainmenu,global.musicvolume,1000)
	room_goto(r_mainmenu) }}
if global.challenges = 1 {
room_goto(r_challenges)
}
}
if global.chooseminigameMU = true { 
	audio_stop_sound(m_justonline)
	audio_play_sound(m_justonline,0,1)
	global.MinigameMU = 0
	room_goto(r_localmultiplayermenu) }
	global.challenges = 0
}
}

if instance_exists(o_settingspausemenu) {
if global.choosesettings = 0 {
instance_activate_object(o_settings)
instance_activate_object(o_pausescreen)
instance_activate_object(o_givefeedback)
instance_destroy(o_allsettings)
instance_destroy(o_info)
instance_destroy(o_settingspausemenu)
instance_destroy(o_animatedtext)
} else {
	scr_TRadjustoptions()
	global.choosesettings = 0 }
}

if room = r_mainmenu {
if !instance_exists(o_quitask) {
instance_create(x,y,o_quitask)
}
}
if room = r_iapjoke {
audio_stop_all();
room_goto(r_mainmenu)
}
if !instance_exists(o_progressask) {
if room = r_gamemode {
audio_stop_sound(m_justonline)
room_goto(r_mainmenu)
}} else { instance_destroy(o_progressask) }
if room = r_credits {
room_goto(r_mainmenu)
sprite_flush(s_creditsbackround)
sprite_flush(s_creditsbackround2)
}
if room = r_funmodemenu {
if global.music = 1 {
if !audio_is_playing(m_mainmenu) {
audio_play_sound(m_mainmenu,0,1)
}
audio_sound_gain(m_mainmenu,global.musicvolume,1000)
audio_sound_gain(m_funmodemusic,0,1000)
}
room_goto(r_gamemode)
}
}