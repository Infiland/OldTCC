if os_is_network_connected() {
if ds_map_find_value(async_load, "id") == get
    {
    if ds_map_find_value(async_load, "status") == 0
        {
        r_str = ds_map_find_value(async_load, "result");
		
		
			r_str = string_copy(r_str, 25, 13);
	r_str = string_digits(r_str)
	global.playercount = real(r_str)
        }
    else
        {
        r_str = "null";
        }
    }
}