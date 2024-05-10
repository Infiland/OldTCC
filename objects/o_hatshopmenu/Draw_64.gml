draw_set_font(fnt_death)
draw_set_color(c_white)
dis = lerp(dis,selectedhat,0.1 * (144 / global.maxfps))

//Exit
draw_sprite(s_nohaticon,0,455+dis*120,500)
//Graduation Hat
drawhatshop(s_graduationhaticon,1+dis,50,global.hat001,500)
//Cone Hat
drawhatshop(s_conehaticon,2+dis,50,global.hat002,500)
//Party Hat
drawhatshop(s_partyhaticon,3+dis,75,global.hat003,500)
//Paper Hat
drawhatshop(s_paperhaticon,4+dis,50,global.hat004,500)
//Top Hat
drawhatshop(s_tophaticon,5+dis,200,global.hat005,500)
//Yellow Top Hat
drawhatshop(s_yellowtophaticon,6+dis,1500,global.hat006,500)
//Reddie Hat
drawhatshop(s_reddiehaticon,7+dis,150,global.hat007,500)
//Christmas Hat
drawhatshop(s_christmashaticon,8+dis,75,global.hat008,500)
//Witch Hat
drawhatshop(s_witchhaticon,9+dis,75,global.hat009,500)
//Pumpkin Hat
drawhatshop(s_pumpkinhaticon,10+dis,75,global.hat010,500)
//Brown Cap
drawhatshop(s_brownhaticon,11+dis,50,global.hat011,500)
//Gray Cap
drawhatshop(s_grayhaticon,12+dis,50,global.hat012,500)
//White Cap
drawhatshop(s_whitehaticon,13+dis,50,global.hat013,500)
//Sun Hat
drawhatshop(s_sunhaticon,14+dis,50,global.hat014,500)
//Red Block Hat
drawhatshop(s_redblockhaticon,15+dis,50,global.hat015,500)
//Yellow Block Hat
drawhatshop(s_yellowblockhaticon,16+dis,50,global.hat016,500)
//Green Block Hat
drawhatshop(s_greenblockhaticon,17+dis,50,global.hat017,500)
//Blue Block Hat
drawhatshop(s_blueblockhaticon,18+dis,50,global.hat018,500)
//White Block Hat
drawhatshop(s_whiteblockhaticon,19+dis,50,global.hat019,500)
//Spike Hat
drawhatshop(s_spikehaticon,20+dis,50,global.hat020,500)
//Invisible Spike Hat
drawhatshop(s_invisiblespikehaticon,21+dis,75,global.hat021,500)
//Vertical Moving Spike Hat
drawhatshop(s_Vspikehaticon,22+dis,75,global.hat022,500)
//Horizontal Moving Spike Hat
drawhatshop(s_Hspikehaticon,23+dis,75,global.hat023,500)
//Hexagon Hat
drawhatshop(s_hexagonhaticon,24+dis,120,global.hat024,500)
//Bread Hat
drawhatshop(s_breadhaticon,25+dis,125,global.hat025,500)
//Soldier Hat
drawhatshop(s_soldierhaticon,26+dis,75,global.hat026,500)
//Samurai Hat
drawhatshop(s_samuraihaticon,27+dis,50,global.hat027,500)
//Red Beanie Hat
drawhatshop(s_redbeaniehaticon,28+dis,75,global.hat028,500)
//Yellow Beanie Hat
drawhatshop(s_yellowbeaniehaticon,29+dis,75,global.hat029,500)
//Green Beanie Hat
drawhatshop(s_greenbeaniehaticon,30+dis,75,global.hat030,500)
//Blue Beanie Hat
drawhatshop(s_bluebeaniehaticon,31+dis,75,global.hat031,500)
//Pirate Hat
drawhatshop(s_piratehaticon,32+dis,125,global.hat032,500)

//Arrow
draw_sprite_ext(s_liquidarrow,0,490,620,1,arrowyscale,0,c_white,1)
if arrowyscale > 1 {
	change = 0
	}
	if arrowyscale < 0.9 {
	change = 1
	}
	if change = 0 { arrowyscale = lerp(arrowyscale,0.89,0.1 * (60 / global.maxfps)) } else { arrowyscale = lerp(arrowyscale,1.01,0.1 * (60 / global.maxfps)) }