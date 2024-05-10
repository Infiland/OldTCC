if os_is_network_connected() {
window_set_cursor(cr_default)
url_open("https://store.steampowered.com/app/1749590/The_Colorful_Creature_Official_Soundtrack/");
} else {
show_message("You are disconnected, please turn on your internet connection.")
}