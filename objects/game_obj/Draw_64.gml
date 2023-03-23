if(room = hostRoom or room = connectionRoom){
	draw_set_font(large_font);
	draw_text(room_width/2-430, room_height/2-30, hostIP);
}

if(room = connectionRoom){
	hostIP = keyboard_string;	
	
	if(keyboard_check_pressed(vk_backspace)){
		keyboard_string = "";	
	}
}