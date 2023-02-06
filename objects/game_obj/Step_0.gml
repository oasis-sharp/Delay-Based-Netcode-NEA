if (room == gameRoom && !room_creation)
{
    event_user(2);
    room_creation = 1;
}



if(gameRunning == 1 and instance_exists(player)){
	timer+=1;
	add_to_array(input_arr, player.player_inp);
	
}


if(network_status == "host"){
	var t_buffer = buffer_create(256, buffer_grow, 1);
	buffer_seek(t_buffer, buffer_seek_start, 0);
	
	for(var i = 0; i < 8; i++){
		buffer_write(t_buffer , buffer_u32 , player.player_inp[i]);	
	}
	for (var i = 0; i < ds_list_size(socketlist); ++i;)
	    {
	    network_send_packet(ds_list_find_value(socketlist, i), t_buffer, buffer_tell(t_buffer));
	    }
	buffer_delete(t_buffer);	
}