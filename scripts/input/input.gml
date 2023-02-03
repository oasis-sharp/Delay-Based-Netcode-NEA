/// @function input();
function input(){
	rightHeld = keyboard_check(right);
	leftHeld = keyboard_check(left);
	jumpHeld = keyboard_check(jump);
	downHeld = keyboard_check(down); 

	downPressed = keyboard_check_pressed(down);
	jumpPressed = keyboard_check_pressed(jump);
	normalPressed = keyboard_check_pressed(normal);
	
		
	var packagedInputs = [game_obj.timer,rightHeld, leftHeld, jumpHeld, downHeld, downPressed, jumpPressed, normalPressed]	
	
	var inps = game_obj.input_arr;

	for (var i = 0; i < array_length(inps); i++){
		var ar = -4
		var current = inps[i]
		
		if(current[0] < game_obj.timer - 20){
			array_delete(inps, i, 1);
		}
		
		if(current[0] = game_obj.timer - 2){
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
			
		}
	}
	
	return(packagedInputs);
}
