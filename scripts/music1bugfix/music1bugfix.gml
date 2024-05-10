function music1bugfix() {
	musicandsoundvolumefix()
	if global.endless = 0 {
	rousr_dissonance_set_details("Story Mode - World 1")
	if !audio_is_playing(m_basics) {
	audio_play_sound(m_basics,0,1);	
	}}


}
