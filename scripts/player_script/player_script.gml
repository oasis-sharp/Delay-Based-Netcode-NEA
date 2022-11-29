
function player_script(){


	var move = (rightHeld - leftHeld);
	
	if(move != 0 and find_in_array(STATE, "grounded") != -4){
		hsp = move * hsp_walk;
	}
	else{ 
		
		if(find_in_array(STATE, "grounded") == -4 and move!=0){
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
		
		if(find_in_array(STATE, "grounded") != -4){
		hsp*=fric;
			if(abs(hsp) < 1){
				hsp = 0;	
			}
		}
	}

	if(move != 0){
		if(find_in_array(STATE, "grounded") != -4){
			image_xscale=move
		}
		sprite_index = walk;
	}
	else{
		sprite_index = idle;	
	}

	vsp = vsp + gravity_accel;


	if (place_meeting(x,y+1,block_obj))
	{
		if(add_to_array(STATE, "grounded")){
			// landing particle code	
		}
	}

	else{
		delete_from_array(STATE, "grounded");
	}
	
	if(find_in_array(STATE, "grounded") != -4 and (jumpHeld)){
		vsp = vsp_jump; 
	}


	var px = sign(hsp) 
	
	
	// wallljump code
	if(place_meeting(x+move,y,block_obj)){
		
		if(find_in_array(STATE, "grounded") == -4 and vsp > 0){
			vsp/=wallslide_fr;
		}
	
		if(move = px and jumpPressed and find_in_array(STATE, "grounded") == -4){
			hsp = move*walljump_speed;
			vsp = vsp_jump;
			image_xscale = -move;
	
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