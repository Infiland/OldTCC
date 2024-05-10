if page != global.LEbuttonpage { exit }
if instance_exists(o_leveleditorleaveask) { exit }

if global.LEMode = 1 {

if instance_exists(o_namelevelLE) { exit }
audio_stop_all()
audio_play_sound(snd_hitboss,0,0)
lol += 1
global.leveleditormusic = lol
if lol > 25 { lol = -1}
scr_leveleditormusic()
//Remember to go to o_LELoad

}