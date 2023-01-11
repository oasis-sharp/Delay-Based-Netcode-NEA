/// @description Hosting
network_status = "host";
server_socket = network_create_server(network_socket_tcp, 6510, 4);
if (server_socket < 0) {
    //Connection error! Add failsafe codes here
}
// sprite_index = host_button;

