global.delta = delta_time / 1000000;

if global.pause = 0 {
if room != r_tale {
global.time += global.delta
}}
if room = r_leveleditor {
global.LESavedWinTime += global.delta
}
global.totaltime += global.delta
if global.wheeltimeleft >= 0 {
global.wheeltimeleft -= global.delta
}