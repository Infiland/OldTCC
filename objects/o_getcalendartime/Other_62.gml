if ds_map_find_value(async_load, "id") == get
    {
    if ds_map_find_value(async_load, "status") == 0
        {

var json = async_load[? "result"]
var map = json_decode(json)

if map == -1 {
exit;	
}

if (ds_map_exists(map,"year")) {
global.calendarcurrentyear = real(ds_map_find_value(map,"year"))
}
if (ds_map_exists(map,"month")) {
global.calendarcurrentmonth = real(ds_map_find_value(map,"month"))
}
if (ds_map_exists(map,"day")) {
global.calendarcurrentday = real(ds_map_find_value(map,"day"))
}

		}}