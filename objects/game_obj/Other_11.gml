/// @description Client
network_status = "client";
client_socket = network_create_socket(network_socket_tcp);
var server = network_connect(client_socket , "127.0.0.1", 6510);
if(server < 0) {
    // sprite_index = failed_button;
}
else {
    network_status = "connected_client";
	// sprite_index = client_button;
}