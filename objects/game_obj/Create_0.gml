network_status = "";
network_set_config(network_config_connect_timeout, 4000); // Try to connect for 4 seconds.
network_set_config(network_config_use_non_blocking_socket,1)

socketlist = ds_list_create();
room_creation = 0;

timer = 0;

gameRunning = 1;
debugt = [];

newX = 0;

input_arr = [];

online_inp = [];
buffered_online_inp = [];