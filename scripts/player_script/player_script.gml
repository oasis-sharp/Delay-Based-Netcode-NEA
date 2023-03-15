function player_script(){
	
	horizontal_movement();
	animation();

	// Apply gravity
	vsp = vsp + gravity_accel;

	landing();
	jumping();

	walljump();
	check_collision();
	
	x = x + hsp;
	y = y + vsp;
}


function check_collision(){
	
	var px = sign(hsp);
	
	if (place_meeting(x+hsp,y,block_obj))
	{
		// Player is colliding with a block, so adjust position to resolve the collision
		while (!place_meeting(x+px,y,block_obj))
		{
			x = round(x + px);
	    }
		
	    hsp = 0;	
	}
	
	var px = sign(vsp);
	
	if (place_meeting(x,y+vsp,block_obj))
	{
		// Player is colliding with a block, so adjust position to resolve the collision
	    while (!place_meeting(x,y+px,block_obj))
	    {
	        y = round(y + px);
	    }

	    vsp = 0;
	}
}

function walljump(){
	
	var px = sign(hsp);
	var move = (rightHeld - leftHeld);

	if(place_meeting(x+move,y,block_obj)){
		
		if(find_in_array(STATE,array_length(STATE), "grounded") == -4 and vsp > 0){
			// Player is in the air and moving down, so perform wallslide
			vsp /= wallslide_fr;
			create_smoke_wall(2);
		}
	
		if(move = px and jumpPressed and find_in_array(STATE,array_length(STATE), "grounded") == -4){
			// Player presses jump and is in the air and against a wall, so perform walljump
			hsp = move * walljump_speed;
			vsp = vsp_jump;
			image_xscale = -move;
	
		}
	}		
}

function horizontal_movement(){
	
	// Calculate the horizontal movement
	var move = (rightHeld - leftHeld);
	
	// If the player is holding a direction and is grounded
	if(move != 0 and find_in_array(STATE,array_length(STATE), "grounded") != -4){
		hsp = move * hsp_walk;
		create_smoke_walk(hsp_walk);
	}
	// If the player is not grounded
	else{ 
		
		// If the player is holding a direction and is not grounded
		if(find_in_array(STATE, array_length(STATE), "grounded") == -4 and move!=0){
			if(move == 1){
				if(hsp < max_x){
					hsp+=air_accel*move;
				}
			}
			else{
				if(hsp > -max_x){
					hsp+=air_accel*move;
				}
			}
		}
		
		// If the player is grounded
		if(find_in_array(STATE,array_length(STATE), "grounded") != -4){
			hsp*=fric;
			add_to_array(STATE, "sliding");
			if(abs(hsp) < 1){
				hsp = 0;
				delete_from_array(STATE, "sliding");
			}
		}
	}	
}

function animation(){
	var move = (rightHeld - leftHeld);
	
	// Set the sprite to the walking sprite if the player is holding a direction
	if(move != 0){
		if(find_in_array(STATE,array_length(STATE), "grounded") != -4){
			image_xscale=move
		}
		sprite_index = walk;
		add_to_array(STATE, "walking");
		delete_from_array(STATE, "idle");
	}
	// Set the sprite to the idle sprite if the player is not holding a direction
	else{
		sprite_index = idle;
		delete_from_array(STATE, "walking");
		add_to_array(STATE, "idle");
	}
	
}

function jumping(){
	// If the player is grounded and is holding the jump button
	if(find_in_array(STATE,array_length(STATE), "grounded") != -4 and (jumpHeld)){
		vsp = vsp_jump; 
	}	
}

function landing(){
	// If the player is colliding with a block object
	if (place_meeting(x,y+vsp,block_obj)) {
		// If the player was not grounded before
		if(add_to_array(STATE, "grounded")){
			// Create landing particles
			if(vsp > 2){
				create_smoke(abs(vsp)*5);
			}
		}
	}
	// If the player is not colliding with a block object
	else{
		delete_from_array(STATE, "grounded");
	}	
}