if littlepause = 0 {
if hp = 3 {
instance_create(x,y,o_ketchup)
}
if hp = 2 {
randomketchup = irandom_range(0,2)
if randomketchup = 0 { instance_create(x,y,o_mayonese) }
else
instance_create(x,y,o_ketchup)
}

if hp = 1 {
randomketchup = irandom_range(0,2)
if randomketchup = 0 { instance_create(x,y,o_mayonese) }
else
instance_create(x,y,o_ketchup)
}
}
if hp > 1 {
alarm[0] = irandom_range(15,20)
}
if hp = 1 {
alarm[0] = irandom_range(10,15)
}

