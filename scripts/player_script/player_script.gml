
function player_script(){


	var move = (rightHeld - leftHeld);
	if(move != 0 and find_in_array(STATE, "grounded") != -4){
		hsp = move * hsp_walk;
	}
	else{ 
		
		if(find_in_array(STATE, "grounded") == -4 and move!=0){
			hsp+=air_accel*move;
		}
		
		if(find_in_array(STATE, "grounded") != -4){
		hsp*=fric;
	
			if(abs(hsp) < 1){
				hsp = 0;	
			}
		}
	}

	if(move != 0){
		image_xscale=abs(image_xscale)*move
		sprite_index = walk;
	}
	else{
		sprite_index = idle;	
	}

	vsp = vsp + gravity_accel;


	if (place_meeting(x,y+1,block_obj))
	{
		add_to_array(STATE, "grounded");
	}

	else{
		delete_from_array(STATE, "grounded");	
	}
	
	if(find_in_array(STATE, "grounded") != -4 and (jumpPressed)){
		vsp = vsp_jump; 	
	}


	var px = sign(hsp) 
	
	
	// wallljump code
	if(place_meeting(x+move,y,block_obj)){
		if(find_in_array(STATE, "grounded") == -4 and vsp > 0){
			create_trail(10,c_black,100,0.5,0.99, x+move,y);
			vsp/=wallslide_fr;
		}
	
		if(move = px and jumpPressed and find_in_array(STATE, "grounded") == -4){
			hsp = move*walljump_speed;
			vsp = vsp_jump;
		}
	}	
		
	if (place_meeting(x+hsp,y,block_obj))
	{
	    while (!place_meeting(x+px,y,block_obj))
	    {
	        x = round(x + px);
	    }
	    hsp = 0;	
		
	}
	x = x + hsp;


	var px = sign(vsp)
	if (place_meeting(x,y+vsp,block_obj))
	{
	    while (!place_meeting(x,y+px,block_obj))
	    {
	        y = round(y + px);
	    }
	    vsp = 0;
	}
	y = y + vsp;
}