if (room == gameRoom && !room_creation)
{
    event_user(2);
    room_creation = 1;
}


if (network_status == "host")
{
    // CONNECTING
    
    if (ds_exists(async_load, ds_type_map))
    {
        // check async event has occured
        
        var networkId = ds_map_find_value(async_load, "id"); // store socket id in var
        
        if (networkId == server_socket)
        {
            var t = ds_map_find_value(async_load, "type");
            switch (t)
            {
                case network_type_connect: // CONNECTING 
                    var socket = ds_map_find_value(async_load, "socket");
                    ds_list_add(socketlist, socket);
                    break;
                case network_type_disconnect: // DISCONNECTING 
                    var socket = ds_map_find_value(async_load, "socket");
                    var ind = ds_list_find_index(socketlist, socket);
                    ds_list_delete(socketlist, ind);
                    break;
                case network_type_data: // RECIEVING DATA
                // handle data
                    break;
            }
        }
    }
}

if (network_status == "client"){
	if (ds_exists(async_load, ds_type_map)){
		var networkId = ds_map_find_value(async_load, "id");
		if(networkId == client_socket)
		    {
		    //We have a new packet from the server
		    } 	
	}
}

if(gameRunning == 1 and instance_exists(player)){
	timer+=1;
	add_to_array(input_arr, player.player_inp);
	add_to_array(buffered_online_inp, online_inp);
}
<<<<<<< HEAD


if(network_status == "host"){
	var t_buffer = buffer_create(256, buffer_grow, 1);
	buffer_seek(t_buffer, buffer_seek_start, 0);
	
	for(var i=0; i < 8; i++){
		buffer_write(t_buffer , buffer_s16, player.player_inp[i]);
	}
	
	for (var i = 0; i < ds_list_size(socketlist); ++i;){
			network_send_packet(ds_list_find_value(socketlist, i), t_buffer, buffer_tell(t_buffer));
	    }
	buffer_delete(t_buffer);	
}

if(network_status == "connected_client"){
	var t_buffer = buffer_create(256, buffer_grow, 1);
	buffer_seek(t_buffer, buffer_seek_start, 0);
	
	for(var i=0; i < 8; i++){
		buffer_write(t_buffer , buffer_s16, player.player_inp[i]);
	}
	
	network_send_packet(client_socket, t_buffer, buffer_tell(t_buffer));

	buffer_delete(t_buffer);	
}

=======
>>>>>>> parent of ade4e5f (IMA DA BIGGEST BIRD GRAAAH)
