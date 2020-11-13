if !place_meeting(x,y,obj_solid) {
	old_x = x
	old_y = y
} else {
	x = old_x
	y = old_y
}

if keyboard_check(controls.left) {
	x -= 3 + movebonus
}
if keyboard_check(controls.right) {
	x += 3 + movebonus
}
if keyboard_check(controls.up) {
	y -= 3 + movebonus
}
if keyboard_check(controls.down) {
	y += 3 + movebonus
}

if keyboard_check(controls.smash) and !smashdebounce or autosmash and !smashdebounce {
	smashdebounce = true
	smashed = false
	state = 1
	if global.points < 50 {
		if room_speed - ((room_speed / 10) * (3 + breakbonus)) - (global.points / 4) > 2 {
			alarm[0] = room_speed - ((room_speed / 10) * (3 + breakbonus)) - (global.points / 4)
		} else {
			alarm[0] = 2
		}
	} else {
		alarm[0] = 2
	}
}

if keyboard_check(vk_escape) {
	game_restart()
}