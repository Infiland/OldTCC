get = http_get("https://api.steampowered.com/ISteamUserStats/GetNumberOfCurrentPlayers/v1/?appid=1651680");

if os_is_network_connected() {
if global.playercount > 1 {
global.creditsmultiplier = 1 + (global.playercount * 0.05)
}} else {
global.creditsmultiplier = 1
}
if global.creditsmultiplier > 3 {
global.creditsmultiplier = 3
}
alarm[0] = 500