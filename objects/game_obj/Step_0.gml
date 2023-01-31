if (room == gameRoom && !room_creation)
{
    event_user(2);
    room_creation = 1;
}


if (network_status == "host")
{
    // CONNECTING
    
    if (ds_exists(async_load, ds_type_map))
    {
        // check async event has occured
        
        var networkId = ds_map_find_value(async_load, "id"); // store socket id in var
        
        if (networkId == server_socket)
        {
            var t = ds_map_find_value(async_load, "type");
            switch (t)
            {
                case network_type_connect: // CONNECTING 
                    var socket = ds_map_find_value(async_load, "socket");
                    ds_list_add(socketlist, socket);
                    break;
                case network_type_disconnect: // DISCONNECTING 
                    var socket = ds_map_find_value(async_load, "socket");
                    var ind = ds_list_find_index(socketlist, socket);
                    ds_list_delete(socketlist, ind);
                    break;
                case network_type_data: // RECIEVING DATA
                // Data handling here... 
                    break;
            }
        }
    }
}
