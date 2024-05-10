function scr_LEChangeBackground(){
switch(global.LEBackground) {
case(0): instance_destroy(o_allbackgrounds) break;
case(1): instance_destroy(o_allbackgrounds)
instance_create(x,y,o_lightbeamspawner) break;
case(2): instance_destroy(o_allbackgrounds)
instance_create(-230,y,o_towerbackground) break;
}
}