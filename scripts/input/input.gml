/// @function input();
function input(){
		rightHeld = keyboard_check(right);
		leftHeld = keyboard_check(left);
		jumpHeld = keyboard_check(jump);
		downHeld = keyboard_check(down); 

		downPressed = keyboard_check_pressed(down);
		
		jumpPressed = keyboard_check_pressed(jump);
		dodgePressed = keyboard_check_pressed(dodge);
		
		normalPressed = keyboard_check_pressed(normal);
		specialPressed = keyboard_check_pressed(special);
}