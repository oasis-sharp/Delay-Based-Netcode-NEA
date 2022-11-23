
function player_script(){


var move = (rightHeld - leftHeld);
hsp = move * hsp_walk;

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
	if (place_meeting(x+hsp,y,block_obj))
	{
	    while (!place_meeting(x+px,y,block_obj))
	    {
	        x = x + px;
	    }
	    hsp = 0;
	}
	x = x + hsp;


	var px = sign(vsp)
	if (place_meeting(x,y+vsp,block_obj))
	{
	    while (!place_meeting(x,y+px,block_obj))
	    {
	        y = y + px;
	    }
	    vsp = 0;
	}
	y = y + vsp;
}