if (network_status == "host")
{
    // CONNECTING   
    
    var networkId = ds_map_find_value(async_load, "id"); // store socket id in var
    
    if (networkId == server_socket)
    {
        var t = ds_map_find_value(async_load, "type");
        
        switch (t)
        {
            case network_type_connect: // CONNECTING 
                var socket = ds_map_find_value(async_load, "socket");
                ds_list_add(socketlist, socket);
				timer = 0;
                break;
            case network_type_disconnect: // DISCONNECTING 
                var socket = ds_map_find_value(async_load, "socket");
                var ind = ds_list_find_index(socketlist, socket);
                ds_list_delete(socketlist, ind);
                break;

        }
    }
	
}

if (network_status == "connected_client")
{
    var networkId = ds_map_find_value(async_load, "id");
	
    if (networkId == client_socket)
    { 
		online_inp = [];
		if(ds_map_exists(async_load, "buffer")){
			var t_buffer = ds_map_find_value(async_load, "buffer"); 
			for(var i = 0; i<8; i++){
				array_insert(online_inp,array_length(online_inp), buffer_read(t_buffer, buffer_u32))
			}
		array_insert(online_inp_buffer, array_length(online_inp_buffer), online_inp);
		}
	}
}
