// trigger the event with id 2 if the room is the game room and room creation is not in progress
if (room == gameRoom && !room_creation)
{
    event_user(2); // trigger event 2
    room_creation = 1; // set room creation to in progress
}

// if the game is running and the player object exists
if(gameRunning == 1 and instance_exists(player)){
	timer+=1; // increment the timer
	add_to_array(input_arr, player.player_inp); // add the player input to the input array
}

// if the network status is "host"
if(network_status == "host"){
	var t_buffer = buffer_create(256, buffer_grow, 1); // create a buffer with a max size of 256, set to grow dynamically and initialized at 1
	buffer_seek(t_buffer, buffer_seek_start, 0); // set the buffer position to the start of the buffer
	
	for(var i = 0; i < 8; i++){
		buffer_write(t_buffer , buffer_u32 , player.player_inp[i]);	// write the player input data to the buffer
	}
	
	for (var i = 0; i < ds_list_size(socketlist); ++i;) // loop through the socket list
	    {
	    newX = network_send_packet(ds_list_find_value(socketlist, i), t_buffer, buffer_tell(t_buffer)); // send the buffer data to each socket in the list
	    }
	buffer_delete(t_buffer); // delete the buffer
}



// if the network status is "connected client"
if(network_status == "connected_client"){
	var t_buffer = buffer_create(256, buffer_grow, 1); // create a buffer with a max size of 256, set to grow dynamically and initialized at 1
	buffer_seek(t_buffer, buffer_seek_start, 0); // set the buffer position to the start of the buffer
	
	for(var i = 0; i < 8; i++){
		buffer_write(t_buffer , buffer_u32 , player.player_inp[i]);	// write the player input data to the buffer
	}
	
	// newX = network_send_packet(client_socket, t_buffer, buffer_tell(t_buffer)); // send the buffer data to the connected client socket
	buffer_delete(t_buffer); // delete the buffer
}
