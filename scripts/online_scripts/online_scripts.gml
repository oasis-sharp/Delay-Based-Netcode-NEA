function host(){
	network_status = "host";
	server_socket = network_create_server(network_socket_tcp, 6510, 2);
	if (server_socket < 0) {
	    game_restart();
	}
	else{
		
	}
}

function client(){
	network_status = "client";
	client_socket = network_create_socket(network_socket_tcp);
	var server = network_connect(client_socket , hostIP, 6510);
	if(server < 0) {
	    game_restart();
	}
	else {
	    network_status = "connected_client";
	}
}