if gamepad_button_check(4,gp_select) {
if file_exists("Continue.sav") {
game_load("Continue.sav")
}
if room = r_lvl1 or r_lvl2 or r_lvl3 or r_lvl4 or r_lvl5 or r_lvl6 or r_lvl7 or r_lvl8 or r_lvl9 or r_lvl10 or r_lvl11 or r_lvl12 or r_lvl13 or r_lvl14 or r_lvl15 or r_lvl16 or r_lvl17 or r_lvl18 or r_lvl19 or r_lvl20 {
audio_play_sound(m_basics,0,1)
}
if room = r_boss1 {
audio_play_sound(m_bosstime,0,1)
if global.boss = 1 {
audio_stop_sound(m_bosstime)
}
}
if room = r_lvl21 or r_lvl22 or r_lvl23 or r_lvl24 or r_lvl25 or r_lvl26 or r_lvl27 or r_lvl28 or r_lvl70 or r_lvl71 or r_hardlvl1 or r_hardlvl2{
audio_play_sound(m_owthespikes,0,1)
}
}

