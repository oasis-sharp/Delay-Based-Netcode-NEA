

    
if (ds_map_find_value(async_load, "id") == server_socket) {
	
	if(ds_map_find_value(async_load, "type") == network_type_connect){
		var socket = ds_map_find_value(async_load, "socket");
		ds_list_add(socketlist, socket);
		begin_timer = current_second+1; // begin sync timer with a short delay
	}
	
	online_inp = [];
	if(ds_map_exists(async_load, "buffer")){
		var t_buffer = ds_map_find_value(async_load, "buffer"); 
		for(var i = 0; i<8; i++){ // write buffer data to array
			array_insert(online_inp,array_length(online_inp), buffer_read(t_buffer, buffer_u32))
		}
	array_insert(online_inp_buffer, array_length(online_inp_buffer), online_inp); // insert array to the input buffer
	}
	
}



if (ds_map_find_value(async_load, "id") == client_socket) { // client recieving data
	online_inp = [];
	if(ds_map_exists(async_load, "buffer")){
		var t_buffer = ds_map_find_value(async_load, "buffer"); 
		for(var i = 0; i<8; i++){ // write buffer data to array
			array_insert(online_inp,array_length(online_inp), buffer_read(t_buffer, buffer_u32))
		}
	array_insert(online_inp_buffer, array_length(online_inp_buffer), online_inp); // insert array to the input buffer
	}
}