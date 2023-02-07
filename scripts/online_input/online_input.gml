/// @function online_input();
function online_input(){
	rightHeld = 0;
	leftHeld = 0;
	jumpHeld =0;
	downHeld = 0;

	downPressed =0;
	jumpPressed = 0;
	normalPressed =0;
		
	var packagedInputs = [game_obj.timer,rightHeld, leftHeld, jumpHeld, downHeld, downPressed, jumpPressed, normalPressed]	
	
	var inps = game_obj.online_inp_buffer;

	for (var i = 0; i < array_length(inps); i++){
		var ar = -4
		var current = inps[i]
		if(array_length(current) = 8){
		
			if(current[0] < game_obj.timer - 20){
				array_delete(inps, i, 1);
			}
		
			if(current[0] > game_obj.timer - 5){
				ar = inps[i];	
			}
		
		
			if(ar != -4){
				rightHeld = ar[1];
				leftHeld = ar[2];
				jumpHeld = ar[3];
				downHeld = ar[4];

				downPressed = ar[5];
				jumpPressed = ar[6];
				normalPressed = ar[7];
				break;
			}
		}
	}
	

	return(packagedInputs);
}
