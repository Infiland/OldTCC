//Get Player Input
key_left = keyboard_check(vk_left) || (gamepad_button_check(4,gp_shoulderlb));
key_right = keyboard_check(vk_right) || (gamepad_button_check(4,gp_shoulderrb));
key_jump = keyboard_check(ord("Z")) || (gamepad_button_check(4,gp_face4));

//Calculate Movement
var move = key_right - key_left;
hsp = move * walksp
vsp = vsp + grv;

if (place_meeting(x,y+1,o_redblock)) and (key_jump)
{
    vsp = -17
    audio_sound_pitch(snd_jump,random_range(0.9,1.1));
    audio_play_sound(snd_jump,5,0)
}
if (place_meeting(x,y+1,o_yellowblock)) and (key_jump)
{
    vsp = -17
    audio_sound_pitch(snd_jump,random_range(0.9,1.1));
    audio_play_sound(snd_jump,5,0)
}
if (place_meeting(x,y+1,o_greenblock)) and (key_jump)
{
    vsp = -17
    audio_sound_pitch(snd_jump,random_range(0.9,1.1));
    audio_play_sound(snd_jump,5,0)
}
if (place_meeting(x,y+1,o_shooter)) and (key_jump)
{
    vsp = -17
    audio_sound_pitch(snd_jump,random_range(0.9,1.1));
    audio_play_sound(snd_jump,5,0)
}
if (place_meeting(x,y+1,o_shooterright)) and (key_jump)
{
    vsp = -17
    audio_sound_pitch(snd_jump,random_range(0.9,1.1));
    audio_play_sound(snd_jump,5,0)
}

//Horizontal Collision
if (place_meeting(x+hsp,y,o_redblock)) {
    while (!place_meeting(x+sign(hsp),y,o_redblock)) 
    {
        x = x + sign(hsp);
    }
    hsp = 0;
}
if (place_meeting(x+hsp,y,o_yellowblock)) {
    while (!place_meeting(x+sign(hsp),y,o_yellowblock)) 
    {
        x = x + sign(hsp);
    }
    hsp = 0;
}
if (place_meeting(x+hsp,y,o_greenblock)) {
    while (!place_meeting(x+sign(hsp),y,o_greenblock)) 
    {
        x = x + sign(hsp);
    }
    hsp = 0;
}
if (place_meeting(x+hsp,y,o_shooter)){
    while (!place_meeting(x+sign(hsp),y,o_shooter)) 
    {
        x = x + sign(hsp);
    }
    hsp = 0;
}
if (place_meeting(x+hsp,y,o_shooterright)) {
    while (!place_meeting(x+sign(hsp),y,o_shooterright))
    {
        x = x + sign(hsp);
    }
    hsp = 0;
}

x = x + hsp

//Vertical Collision
if (place_meeting(x,y+vsp,o_redblock)) {
    while (!place_meeting(x,y+sign(vsp),o_redblock)) 
    {
        y = y + sign(vsp);
    }
    vsp = 0;
}
if (place_meeting(x,y+vsp,o_yellowblock)) {
    while (!place_meeting(x,y+sign(vsp),o_yellowblock)) 
    {
        y = y + sign(vsp);
    }
    vsp = 0;
}
if (place_meeting(x,y+vsp,o_greenblock)) {
    while (!place_meeting(x,y+sign(vsp),o_greenblock)) 
    {
        y = y + sign(vsp);
    }
    vsp = 0;
}
if (place_meeting(x,y+vsp,o_shooter)) {
    while (!place_meeting(x,y+sign(vsp),o_shooter)) 
    {
        y = y + sign(vsp);
    }
    vsp = 0;
}
if (place_meeting(x,y+vsp,o_shooterright)) {
    while (!place_meeting(x,y+sign(vsp),o_shooterright))
    {
        y = y + sign(vsp);
    }
    vsp = 0;
}

y = y + vsp

//Animation

if not key_right or key_left { image_index = 0 }
if key_right { image_index = 1 }
if key_left { image_index = 2 }
if key_right and key_left { image_index = 0 }

//Colors
if global.color = 0 {sprite_index = s_playerred}
if global.color = 1 {sprite_index = s_playeryellow}
if global.color = 2 {sprite_index = s_playergreen}

//Death

if !global.color = 0 or global.color = 1 or global.color = 2 {
if place_meeting(x-1,y-1,o_redblock) {
global.deaths += 1
instance_destroy()
instance_create(x,y,o_playerdead)
//coin
if global.pickup = 1 {
global.special -= 1
}
global.pickup = 0
audio_play_sound(snd_dead,5,0);
}
}

if !global.color = 1 or global.color = 2 or global.color = 0 {
if place_meeting(x-1,y-1,o_yellowblock) {
global.deaths += 1
instance_destroy()
instance_create(x,y,o_playerdead)
//coin
if global.pickup = 1 {
global.special -= 1
}
global.pickup = 0
audio_play_sound(snd_dead,5,0);
}
}

if !global.color = 2 or global.color = 1 or global.color = 0 {
if place_meeting(x-1,y-1,o_greenblock) {
global.deaths += 1
instance_destroy()
instance_create(x,y,o_playerdead)
//coin
if global.pickup = 1 {
global.special -= 1
}
global.pickup = 0
audio_play_sound(snd_dead,5,0);
}
}

bugfix1 += 1

if !global.color = 0 or global.color = 1 or global.color = 2 {
if place_meeting(x+1,y+1,o_redblock) {
global.deaths += 1
instance_destroy()
instance_create(x,y,o_playerdead)
//coin
if global.pickup = 1 {
global.special -= 1
}
global.pickup = 0
audio_play_sound(snd_dead,5,0);
}
}

if !global.color = 1 or global.color = 2 or global.color = 0 {
if place_meeting(x+1,y+1,o_yellowblock) {
global.deaths += 1
instance_destroy()
instance_create(x,y,o_playerdead)
//coin
if global.pickup = 1 {
global.special -= 1
}
global.pickup = 0
audio_play_sound(snd_dead,5,0);
}
}


if !global.color = 2 or global.color = 1 or global.color = 0 {
if place_meeting(x+1,y+1,o_greenblock) {
global.deaths += 1
instance_destroy()
instance_create(x,y,o_playerdead)
//coin
if global.pickup = 1 {
global.special -= 1
}
global.pickup = 0
audio_play_sound(snd_dead,5,0);
}
}


if place_meeting(x,y,o_spike) {
global.deaths += 1
instance_destroy()
instance_create(x,y,o_playerdead)
//coin
if global.pickup = 1 {
global.special -= 1
}
global.pickup = 0
audio_play_sound(snd_dead,5,0);
}

if place_meeting(x,y,o_bulletleft) or place_meeting(x,y,o_bulletright){
global.deaths += 1
instance_destroy()
instance_create(x,y,o_playerdead)
//coin
if global.pickup = 1 {
global.special -= 1
}
global.pickup = 0
audio_play_sound(snd_dead,5,0);
}

if bugfix1 = 1 { bugfix1 = 0 }

//Next Level
if place_meeting(x,y+3,o_door) {
global.pickup = 0
if room = r_lvl20 {
audio_stop_sound(m_basics)
}
if room = r_boss1prepare {
audio_play_sound(m_bosstime,0,1)
}
if room = r_boss1 {
audio_play_sound(m_owthespikes,0,1)
}
room_goto_next()
game_save("Continue.sav")
}

