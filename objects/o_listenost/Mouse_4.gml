if os_is_network_connected() {
window_set_cursor(cr_default)
url_open("https://infiland.bandcamp.com/album/the-colorful-creature-ost");
} else {
show_message("You are disconnected, please turn on your internet connection.")
}