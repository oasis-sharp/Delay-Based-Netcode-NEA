if(debug = 1){
	draw_set_color(c_red);
	draw_text(72,100, "timer - " + string(game_obj.timer));
	draw_text(72,128, "recieved input list - " + string(find_current_inputs(game_obj.online_inp_buffer, player.delay)));
	draw_text(72,150, "most recent recieved input - " + string(json_stringify(game_obj.online_inp)));
}

if(keyboard_check_pressed(ord("L"))){
	debug*=-1;
}	