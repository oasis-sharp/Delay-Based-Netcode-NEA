event_inherited();

if(dir == -1){
		if(xvel > 0){
		xvel = 0;
		x_accel = 0;
		fade_speed=0.4;
		}
}

if(dir == 1){
		if(xvel < 0){
		xvel = 0;
		x_accel = 0;
		fade_speed=0.4;
		}
}



x+=player.hsp/3;