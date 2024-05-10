if os_is_network_connected() {
window_set_cursor(cr_default)
url_open("https://www.reddit.com/r/TCC_Game/");
} else {
show_message("You are disconnected, please turn on your internet connection.")
}