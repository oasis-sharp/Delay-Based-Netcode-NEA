draw_text(72,100, "timer - " + string(game_obj.newX));
draw_text(72,128, "buffer list - " + string(json_stringify(game_obj.online_inp_buffer)));
draw_text(72,150, "most recent buffer - " + string(json_stringify(game_obj.online_inp)));