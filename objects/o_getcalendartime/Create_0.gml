global.calendarcurrentday = 1
global.calendarcurrentmonth = 1
global.calendarcurrentyear = 2021

get = http_get("https://www.timeapi.io/api/Time/current/zone?timeZone=Europe/Amsterdam")

alarm[0] = 1000 * (60 / global.maxfps)