/// @function input();
function input(){
	
	var packagedInputs = fetch_inputs();
	array_insert(packagedInputs, 0, game_obj.timer);
	
	var current_inputs = find_current_inputs();
		
		
	if(current_inputs != -4){
		rightHeld = current_inputs[1];
		leftHeld = current_inputs[2];
		jumpHeld = current_inputs[3];
		downHeld = current_inputs[4];

		downPressed = current_inputs[5];
		jumpPressed = current_inputs[6];
		normalPressed = current_inputs[7];
			
	}
	
	return(packagedInputs);
}

function fetch_inputs(){
	
	rightHeld = keyboard_check(right);
	leftHeld = keyboard_check(left);
	jumpHeld = keyboard_check(jump);
	downHeld = keyboard_check(down); 

	downPressed = keyboard_check_pressed(down);
	jumpPressed = keyboard_check_pressed(jump);
	normalPressed = keyboard_check_pressed(normal);
	
	var inputs = [rightHeld, leftHeld, jumpHeld, downHeld, downPressed, jumpPressed, normalPressed];
	return inputs;
}

function find_current_inputs(){
	
	
	var inps = game_obj.input_arr;
	var ar = -4;
	
	for (var i = 0; i < array_length(inps); i++){
		
		ar = -4;
		var current = inps[i];
		
		if(current[0] < game_obj.timer - 20){
			array_delete(inps, i, 1);
		}
		
		var temp = binary_search(inps, game_obj.timer-delay)
		
		if(temp != -4)
		{
			ar = inps[temp]
		}
	
	}
	
	return ar;

}