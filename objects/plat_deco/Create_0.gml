while(!place_meeting(x,y+1, block_obj) or image_yscale > 100){
	image_yscale+=1;	
}

image_blend = c_black;
image_alpha = 0.7;
depth=100;