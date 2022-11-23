if(position_meeting(mouse_x,mouse_y,id)){
	image_blend = c_gray;
	
	if(mouse_check_button_pressed(mb_left)){
		event_user(0);
	}
}
else{
	image_blend = c_white;	
}