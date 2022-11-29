function player_setup(){
	
	image_xscale=1;
	image_yscale=1;
	

	gravity_accel = 0.4;
	walljump_speed = -3;
	wallslide_fr = 1.5;
	
	hsp_walk = 2;
	vsp_jump = -4.2;
	air_accel = 0.3;
	
	vsp = 0;
	hsp = 0;
	
	fric = 0.86;
	
	max_x = 2;
	max_y = 5;
	
	STATE = [];
	
	image_blend = c_black;
	
	x_stretch = 1;
	y_stretch = 1;
	
	x_stretch_speed = 1.1;
	y_stretch_speed = 1.05;
	
}