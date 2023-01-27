if room = gameRoom and !room_creation{
		event_user(2);	
		room_creation = 1;
}


if(network_status = "host"){
	
	if(ds_exists(async_load, ds_type_map)){ // check async event has occured
	
	var networkId = ds_map_find_value(async_load, "id");         
		if(networkId == server_socket) { // check ID is the created server socket	
		  
		    if(ds_map_find_value(async_load, "type") == network_type_connect) {               
				var s = ds_map_find_value(async_load, "socket"); 
		        ds_list_add(socketlist, s); // connecting socket ID
			}
		}
	}
}