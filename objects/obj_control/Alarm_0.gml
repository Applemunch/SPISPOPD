if global.seconds == 0 {
	global.seconds = 60
	global.minutes -= 1
}
global.seconds -= 1
if global.minutes < 0 {
	game_restart()
}
alarm[0] = room_speed