depth = -100
instance_deactivate_object(o_settings)
instance_deactivate_object(o_givefeedback)
instance_deactivate_object(o_pausescreen)
instance_create(x,y,o_info)

//Main

instance_create(camera_get_view_x(view_camera[0])-256,camera_get_view_y(view_camera[0])+160,o_visualsettings)
instance_create(camera_get_view_x(view_camera[0])-256,camera_get_view_y(view_camera[0])+224,o_audiosettings)
instance_create(camera_get_view_x(view_camera[0])-256,camera_get_view_y(view_camera[0])+288,o_controlssettings)
instance_create(camera_get_view_x(view_camera[0])-256,camera_get_view_y(view_camera[0])+352,o_cheatssettings)
instance_create(camera_get_view_x(view_camera[0])-256,camera_get_view_y(view_camera[0])+416,o_languagessettings)
instance_create(camera_get_view_x(view_camera[0])-256,camera_get_view_y(view_camera[0])+480,o_fpssettings)
instance_create(camera_get_view_x(view_camera[0])-256,camera_get_view_y(view_camera[0])+544,o_autopausesettings)
instance_create(camera_get_view_x(view_camera[0])-256,camera_get_view_y(view_camera[0])+608,o_decimalsettings)
instance_create(camera_get_view_x(view_camera[0])-256,camera_get_view_y(view_camera[0])+160,o_leveleditortutorialsettings)
instance_create(camera_get_view_x(view_camera[0])-256,camera_get_view_y(view_camera[0])+224,o_maxfpssettings)
instance_create(camera_get_view_x(view_camera[0])-256,camera_get_view_y(view_camera[0])+288,o_objcountersettings)
instance_create(camera_get_view_x(view_camera[0])-256,camera_get_view_y(view_camera[0])+352,o_casualmodesettings)
instance_create(camera_get_view_x(view_camera[0])-256,camera_get_view_y(view_camera[0])+416,o_autothumbnailsettings)

//Visuals
instance_create(camera_get_view_x(view_camera[0])-256,camera_get_view_y(view_camera[0])+160,o_starsettings)
instance_create(camera_get_view_x(view_camera[0])-256,camera_get_view_y(view_camera[0])+224,o_blocksettings)
instance_create(camera_get_view_x(view_camera[0])-256,camera_get_view_y(view_camera[0])+288,o_itemsettings)
instance_create(camera_get_view_x(view_camera[0])-256,camera_get_view_y(view_camera[0])+352,o_playersettings)
instance_create(camera_get_view_x(view_camera[0])-256,camera_get_view_y(view_camera[0])+416,o_backroundsettings)
instance_create(camera_get_view_x(view_camera[0])-256,camera_get_view_y(view_camera[0])+480,o_vignettesettings)
instance_create(camera_get_view_x(view_camera[0])-256,camera_get_view_y(view_camera[0])+544,o_3dsettings)
instance_create(camera_get_view_x(view_camera[0])-256,camera_get_view_y(view_camera[0])+608,o_blockbackgroundsettings)
instance_create(camera_get_view_x(view_camera[0])-256,camera_get_view_y(view_camera[0])+160,o_colorblindsettings)
instance_create(camera_get_view_x(view_camera[0])-256,camera_get_view_y(view_camera[0])+224,o_fullscreensettings)
instance_create(camera_get_view_x(view_camera[0])-256,camera_get_view_y(view_camera[0])+288,o_texturefiltersettings)
instance_create(camera_get_view_x(view_camera[0])-256,camera_get_view_y(view_camera[0])+352,o_watershadersettings)
instance_create(camera_get_view_x(view_camera[0])-256,camera_get_view_y(view_camera[0])+416,o_gunvisibilitysettings)
instance_create(camera_get_view_x(view_camera[0])-256,camera_get_view_y(view_camera[0])+480,o_oldGSsettings)

instance_create(camera_get_view_x(view_camera[0])+1030,camera_get_view_y(view_camera[0])+189,o_poorsettings)
instance_create(camera_get_view_x(view_camera[0])+1030,camera_get_view_y(view_camera[0])+189,o_lowsettings)
instance_create(camera_get_view_x(view_camera[0])+1030,camera_get_view_y(view_camera[0])+244,o_mediumsettings)
instance_create(camera_get_view_x(view_camera[0])+1030,camera_get_view_y(view_camera[0])+244,o_highsettings)

//Audio
instance_create(camera_get_view_x(view_camera[0])-256,camera_get_view_y(view_camera[0])+160,o_musicdistortionsettings)
instance_create(camera_get_view_x(view_camera[0])-256,camera_get_view_y(view_camera[0])+224,o_troopvoicelinessettings)
instance_create(camera_get_view_x(view_camera[0])-256,camera_get_view_y(view_camera[0])+288,o_musicsettings)
instance_create(camera_get_view_x(view_camera[0])-256,camera_get_view_y(view_camera[0])+352,o_soundsettings)
instance_create(camera_get_view_x(view_camera[0])-256,camera_get_view_y(view_camera[0])+416,o_mastervolumesettings)
instance_create(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0])+313,o_settingsslidermusic)
instance_create(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0])+377,o_settingsslidersound)
instance_create(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0])+441,o_settingsslidermastervolume)

//Controls
var i = 0
for(i=0;i<6;i++) {
lol = instance_create(camera_get_view_x(view_camera[0])-128,camera_get_view_y(view_camera[0])+160+80*i,o_controlsbuttonsetings)
with lol {
controls = i
}}

instance_create(camera_get_view_x(view_camera[0])-256,camera_get_view_y(view_camera[0])+160,o_skiplevelholdsettings)
instance_create(camera_get_view_x(view_camera[0])-128,camera_get_view_y(view_camera[0])+640,o_defaultkeysbuttonsetings)

instance_create(x,y,o_animatedtext)
with(o_animatedtext) {
texty = 40
text = "Adjust Options"
}