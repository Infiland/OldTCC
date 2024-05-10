var cost = floor((global.wheeltimeleft/30) * (0.5 + (global.creditsmultiplier / 2)))
text = "Skip Cooldown\nCost: " + string(cost)
alarm[100] = 200