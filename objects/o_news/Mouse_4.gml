if os_is_network_connected() {
window_set_cursor(cr_default)
url_open("https://store.steampowered.com/news/app/1651680");
} else {
show_message("You are disconnected, please turn on your internet connection.")
}