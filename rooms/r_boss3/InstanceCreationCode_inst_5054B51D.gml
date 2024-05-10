audio_stop_sound(m_bossprepare)
rousr_dissonance_set_details("Story Mode - Piano Boss")
if global.boss3 = 1 {
instance_destroy()
instance_destroy(o_buttonadvantage3)
instance_destroy(o_buttonadvantage3piano2)
instance_destroy(o_buttonadvantage3piano3)
instance_create(832,640,o_door)
}