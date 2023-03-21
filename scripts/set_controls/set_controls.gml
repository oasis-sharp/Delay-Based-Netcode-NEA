function set_controls(){
	
	if(control_scheme = 1){
	
		right = ord("D");
		left = ord("A");
		down = ord("S");
		up = ord("W");
	
		jump = vk_space;
		normal = ord("P");
	
	}
	
	else{

		right = vk_right;
		left = vk_left;
		down = vk_down;
		up = vk_up;
	
		jump = vk_space;
		normal = ord("Z");		
		
	}
	
}