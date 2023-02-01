/// @function input();
function input(){
	rightHeld = keyboard_check(right);
	leftHeld = keyboard_check(left);
	jumpHeld = keyboard_check(jump);
	downHeld = keyboard_check(down); 

	downPressed = keyboard_check_pressed(down);
	jumpPressed = keyboard_check_pressed(jump);
	normalPressed = keyboard_check_pressed(normal);
		
	var packagedInputs = [rightHeld, leftHeld, jumpHeld, downHeld, downPressed, jumpPressed, normalPressed, game_obj.timer]
	return(packagedInputs)
}