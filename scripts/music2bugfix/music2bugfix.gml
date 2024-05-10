function music2bugfix() {
	musicandsoundvolumefix()
	if global.endless = 0 {
	rousr_dissonance_set_details("Story Mode - World 2")
	if !audio_is_playing(m_owthespikes) {
	audio_play_sound(m_owthespikes,0,1);	
	}}
}
