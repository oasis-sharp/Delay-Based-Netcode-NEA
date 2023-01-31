/// @description Hosting
network_status = "host";
server_socket = network_create_server(network_socket_tcp, 6510, 2);
if (server_socket < 0) {
    //Connection error! Add failsafe codes here
}

