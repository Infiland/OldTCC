function verticalcollision() {
	if (place_meeting(x,y+vsp,o_anyblock)) {
	    while (!place_meeting(x,y+sign(vsp),o_anyblock)) 
	    {
	        y = y + sign(vsp);
	    }
	    vsp = 0;
	}
	if (place_meeting(x,y+vsp,o_redblockmove)) {
	    while (!place_meeting(x,y+sign(vsp),o_redblockmove)) 
	    {
	        y = y + sign(vsp);
	    }
	    vsp = 0;
	}
	if (place_meeting(x,y+vsp,o_yellowblockmove)) {
	    while (!place_meeting(x,y+sign(vsp),o_yellowblockmove)) 
	    {
	        y = y + sign(vsp);
	    }
	    vsp = 0;
	}
	if (place_meeting(x,y+vsp,o_greenblockmove)) {
	    while (!place_meeting(x,y+sign(vsp),o_greenblockmove)) 
	    {
	        y = y + sign(vsp);
	    }
	    vsp = 0;
	}
	if (place_meeting(x,y+vsp,o_blueblockmove)) {
	    while (!place_meeting(x,y+sign(vsp),o_blueblockmove)) 
	    {
	        y = y + sign(vsp);
	    }
	    vsp = 0;
	}
	if (place_meeting(x,y+vsp,o_whiteblockmove)) {
	    while (!place_meeting(x,y+sign(vsp),o_whiteblockmove)) 
	    {
	        y = y + sign(vsp);
	    }
	    vsp = 0;
	}
	if (place_meeting(x,y+vsp,o_shooter)) {
	    while (!place_meeting(x,y+sign(vsp),o_shooter)) 
	    {
	        y = y + sign(vsp);
	    }
	    vsp = 0;
	}
	if (place_meeting(x,y+vsp,o_shooterright)) {
	    while (!place_meeting(x,y+sign(vsp),o_shooterright))
	    {
	        y = y + sign(vsp);
	    }
	    vsp = 0;
	}
	if (place_meeting(x,y+vsp,o_rocketlauncher)) {
	    while (!place_meeting(x,y+sign(vsp),o_rocketlauncher)) 
	    {
	        y = y + sign(vsp);
	    }
	    vsp = 0;
	}
	if (place_meeting(x,y+vsp,o_rocketlauncherright)) {
	    while (!place_meeting(x,y+sign(vsp),o_rocketlauncherright))
	    {
	        y = y + sign(vsp);
	    }
	    vsp = 0;
	}
	if vsp > 0 {
	if (place_meeting(x,y+vsp,o_onewayupblock)) {
	    while (!place_meeting(x,y+sign(vsp),o_onewayupblock))
	    {
	        y = y + sign(vsp);
	    }
	    vsp = 0;
	}}
	if vsp < 0 {
	if (place_meeting(x,y+vsp,o_onewaydownblock)) {
	    while (!place_meeting(x,y+sign(vsp),o_onewaydownblock))
	    {
	        y = y + sign(vsp);
	    }
	    vsp = 0;
	}}
	if instance_exists(o_playerMU) {
	if (place_meeting(x,y+vsp,o_playerMU)) {
	    while (!place_meeting(x,y+sign(vsp),o_playerMU)) 
	    {
	        y = y + sign(vsp);
	    }
	    vsp = 0;
	}}


}
