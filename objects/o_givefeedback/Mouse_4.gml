if os_is_network_connected() {
window_set_cursor(cr_default)
url_open("https://forms.gle/8z3NW4D7Sv8pU2q8A");
} else {
show_message("You are disconnected, please turn on your internet connection.")
}