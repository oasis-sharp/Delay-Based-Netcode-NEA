network_status = "";
network_set_config(network_config_connect_timeout, 4000); // Try to connect for 4 seconds.
network_set_config(network_config_use_non_blocking_socket,1)

socketlist = ds_list_create();
room_creation = 0;

timer = 0;

gameRunning = 1;

hostIP = "127.0.0.1"

online_inp = [];
online_inp_buffer = [];

begin_timer = -4;
timer_sync = 0;

levelStore=[];

input_arr = [];

client_socket = 0;
server_socket = 0;
