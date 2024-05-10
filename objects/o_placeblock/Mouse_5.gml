if instance_exists(o_leveleditorleaveask) { exit }

if global.LEMode = 1 {
if instance_exists(o_namelevelLE) { exit }
global.LEVerified = 0
instance_create(x,y,o_deleteblock)
instance_destroy()

}