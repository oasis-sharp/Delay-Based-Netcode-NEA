// Get the type of connection
var t = ds_map_find_value(async_load, "type");

if (network_status == "host")
{
    // Check if networkId matches server_socket
    var networkId = ds_map_find_value(async_load, "id");
    if (networkId == server_socket)
    {   
        // Check connection type
        switch (t)
        {
            // Handle connection event
            case network_type_connect:
                var socket = ds_map_find_value(async_load, "socket");
                ds_list_add(socketlist, socket);
				timer = 0;
                break;
            // Handle disconnection event
            case network_type_disconnect:
                var socket = ds_map_find_value(async_load, "socket");
                var ind = ds_list_find_index(socketlist, socket);
                ds_list_delete(socketlist, ind);
                break;
        }
    }
}


   
var networkId = ds_map_find_value(async_load, "id");
if(t = network_type_data)
{ 
	// Handle incoming data buffer
	online_inp = [];
	if(ds_map_exists(async_load, "buffer")){
		var t_buffer = ds_map_find_value(async_load, "buffer"); 
		for(var i = 0; i<8; i++){
			array_insert(online_inp,array_length(online_inp), buffer_read(t_buffer, buffer_u32))
		}
	array_insert(online_inp_buffer, array_length(online_inp_buffer), online_inp);
	}
}

