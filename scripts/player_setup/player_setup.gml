function player_setup(){
	
	image_xscale=1;
	image_yscale=1;
	

	gravity_accel = 0.5;
	walljump_speed = -3;
	wallslide_fr = 1.3;
	
	hsp_walk = 3;
	vsp_jump = -5;
	air_accel = 0.4;
	
	vsp = 0;
	hsp = 0;
	
	fric = 0.78;
	
	max_x = 10;
	max_y = 20;
	
	STATE = [];
	
}