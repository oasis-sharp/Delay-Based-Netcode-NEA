function player_setup(){
	
	image_xscale=1; // the x and y scale of the sprite that
	image_yscale=1; // will be drawn in the Draw event
	

	gravity_accel = 0.4; // acceleration magnitude of gravity
	walljump_speed = -3; // speed of player when initiating a walljump
	wallslide_fr = 1.5; // how much a player reduces their speed when sliding down a walll
	
	hsp_walk = 2; // horizontal walk speed
	vsp_jump = -4.2; // vericle jump speed
	air_accel = 0.3; // how fast the player can accelerate in the air
	
	vsp = 0; // initiate the horiozontal and verticle velocity variables
	hsp = 0;
	
	fric = 0.86; // grounded friction
	
	max_x = 2; // max x speed
	max_y = 5; // max y speed
	
	STATE = []; // initate the state array
	
	image_blend = c_black; // make the players sprite shaded in black
	
	x_stretch = 1;
	y_stretch = 1; // stretch variables for some possible effects later down the line
	
	delay = 3; // set 3 frame delay

	ini_open("save.ini");
	control_scheme = ini_read_real("save", "scheme", 1);
	ini_close();
	
}