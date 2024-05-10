if global.berserk = 0 {
instance_create(x,y,o_enemydead);

if hasammo = 1 { 
var ammo = instance_create(x,y,o_ammo)
with ammo {
containsammo = 12	
}
}

}