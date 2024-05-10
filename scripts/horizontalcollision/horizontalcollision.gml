function horizontalcollision() {
	if (place_meeting(x+hsp,y,o_anyblock)) {
	    while (!place_meeting(x+sign(hsp),y,o_anyblock)) 
	{
	x = x + sign(hsp);
	}
	hsp = 0;
	}
	if (place_meeting(x+hsp,y,o_redblockmove)) {
	    while (!place_meeting(x+sign(hsp),y,o_redblockmove)) 
	    {
	        x = x + sign(hsp);
	    }
	    hsp = 0;
	}
	if (place_meeting(x+hsp,y,o_yellowblockmove)) {
	    while (!place_meeting(x+sign(hsp),y,o_yellowblockmove)) 
	    {
	        x = x + sign(hsp);
	    }
	    hsp = 0;
	}
	if (place_meeting(x+hsp,y,o_greenblockmove)) {
	    while (!place_meeting(x+sign(hsp),y,o_greenblockmove)) 
	    {
	        x = x + sign(hsp);
	    }
	    hsp = 0;
	}
	if (place_meeting(x+hsp,y,o_blueblockmove)) {
	    while (!place_meeting(x+sign(hsp),y,o_blueblockmove)) 
	    {
	        x = x + sign(hsp);
	    }
	    hsp = 0;
	}
	if (place_meeting(x+hsp,y,o_whiteblockmove)) {
	    while (!place_meeting(x+sign(hsp),y,o_whiteblockmove)) 
	    {
	        x = x + sign(hsp);
	    }
	    hsp = 0;
	}
	if (place_meeting(x+hsp,y,o_shooter)){
	    while (!place_meeting(x+sign(hsp),y,o_shooter)) 
	    {
	        x = x + sign(hsp);
	    }
	    hsp = 0;
	}
	if (place_meeting(x+hsp,y,o_shooterright)) {
	    while (!place_meeting(x+sign(hsp),y,o_shooterright))
	    {
	        x = x + sign(hsp);
	    }
	    hsp = 0;
	}
	if (place_meeting(x+hsp,y,o_rocketlauncher)){
	    while (!place_meeting(x+sign(hsp),y,o_rocketlauncher)) 
	    {
	        x = x + sign(hsp);
	    }
	    hsp = 0;
	}
	if (place_meeting(x+hsp,y,o_rocketlauncherright)) {
	    while (!place_meeting(x+sign(hsp),y,o_rocketlauncherright))
	    {
	        x = x + sign(hsp);
	    }
	    hsp = 0;
	}
	if hsp < 0 {
	if (place_meeting(x+hsp,y,o_onewayrightblock)) {
	    while (!place_meeting(x+sign(hsp),y,o_onewayrightblock))
	    {
	        x = x + sign(hsp);
	    }
	    hsp = 0;
	}}
	if hsp > 0 {
	if (place_meeting(x+hsp,y,o_onewayleftblock)) {
	    while (!place_meeting(x+sign(hsp),y,o_onewayleftblock))
	    {
	        x = x + sign(hsp);
	    }
	    hsp = 0;
	}}
	if instance_exists(o_playerMU) {
	if (place_meeting(x+hsp,y,o_playerMU)) {
	    while (!place_meeting(x+sign(hsp),y,o_playerMU))
	    {
	        x = x + sign(hsp);
	    }
	    hsp = 0;
	}}


}
