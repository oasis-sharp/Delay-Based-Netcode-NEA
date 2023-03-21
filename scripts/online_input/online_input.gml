/// @function online_input();
function online_input(){
	
	// set all default inputs to 0
	
	rightHeld = 0;
	leftHeld = 0;
	jumpHeld =0;
	downHeld = 0;

	downPressed =0;
	jumpPressed = 0;
	normalPressed =0;
	
	var ar = find_current_inputs(game_obj.online_inp_buffer, player.delay)
		
		
	if(ar != -4){
		rightHeld = ar[1];
		leftHeld = ar[2];
		jumpHeld = ar[3];
		downHeld = ar[4];
		
		downPressed = ar[5];
		jumpPressed = ar[6];
		normalPressed = ar[7];
			
	}
}
