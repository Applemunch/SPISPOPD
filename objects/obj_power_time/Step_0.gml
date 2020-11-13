if place_meeting(x,y,obj_player) and global.minutes <= 2 {
	global.seconds += 10
	if global.seconds > 60 {
		do {
			global.seconds -= 60
			global.minutes += 1
		} until global.seconds < 60
	}
	if global.minutes > 2 {
		global.minutes = 2
	}
	instance_destroy(self)
	audio_play_sound(sfx_powerup,0,false)
}