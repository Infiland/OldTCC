if !instance_exists(o_quitask) {
if os_is_network_connected() {
window_set_cursor(cr_default)
url_open("https://www.youtube.com/channel/UC3d8UnmOezFZeCwY8K01PSw");
} else {
show_message("You are disconnected, please turn on your internet connection.")
}}