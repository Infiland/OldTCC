y = lerp(y,ystart - global.customlevelsscroll,0.1 * (60 / global.maxfps))

//var directory = global.workshopfolder + "\\"
if y < -90 {
exit;
}
if y > 900 {
exit;
}

if mPubFileId = 0 {
image_blend = c_red	
} else { image_blend = c_white }

//draw_self()
draw_rectangle_color(room_width/2-200,y,room_width/2+200,y+90,c_black,$1d1d1d,c_black,$1d1d1d,false)
draw_rectangle_color(room_width/2-200,y,room_width/2+200,y+90,c_white,c_white,c_white,c_white,true)
draw_set_color(c_white)
draw_set_font(fnt_death)

draw_set_halign(fa_center)
if mBanned = false {
draw_text(room_width/2,y+2,string(mTitle))
//draw_text(x+5,y+22,"Made by: " + string(mName))
if mLikes > 0 {
draw_set_color(c_lime)
}
draw_text(room_width/2,y+42,"Likes: " + string(mLikes))
draw_set_color(c_white)
if mDislikes > 0 {
draw_set_color(c_red)
}
draw_text(room_width/2,y+62,"Disikes: " + string(mDislikes))
draw_set_color(c_white)
} else {
draw_text(room_width/2,y+7,string(mTitle))
draw_set_color(c_red)
draw_text(room_width/2,y+32,"This map is banned from workshop!")
}

if mFeatured = true {
draw_sprite(s_featuredstar,0,x-100,y)	
}

draw_set_color(c_white)

//Medals
var dmedal = requiredtime

var gmedal = dmedal * 1.1
var smedal = gmedal * 1.2
var bmedal = smedal * 1.3
var spr_num = 3

if time < bmedal { spr_num = 0 }
if time < smedal { spr_num = 1 }
if time < gmedal { spr_num = 2 }
if time < dmedal { spr_num = 3 }

	if time < bmedal { 
	 draw_sprite_ext(s_medals,spr_num,x+250,y+35,0.07,0.07,0,c_white,1)
 }
 
 //draw_text(x,y,time)
  //draw_text(x,y+30,requiredtime)



//draw_text(x+5,y+72,"id: " + string(mPubFileId))


/*directory = string_replace_all(directory,"\\","/")
draw_text(32,650,"Directory: " + string(directory))
if directory_exists(directory) {
draw_text(32,700,"yes")
} else {
draw_text(32,700,"no")	
}

//draw_text(32,650,mPath)
//draw_text(32,670,mPubFileId)