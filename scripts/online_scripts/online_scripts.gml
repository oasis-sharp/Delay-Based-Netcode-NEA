function host(){
	network_status = "host";
	server_socket = network_create_server(network_socket_tcp, 6510, 2);
	if (server_socket < 0) {
	    //Connection error! Add failsafe codes here
	}
}

function client(){
	network_status = "client";
	client_socket = network_create_socket(network_socket_tcp);
	var server = network_connect(client_socket , "127.0.0.1", 6510);
	if(server < 0) {
	    // sprite_index = failed_button;
	}
	else {
	    network_status = "connected_client";
		// sprite_index = client_button;
		begin_timer = current_second+1;
	}
}