if place_meeting(x,y,obj_player) {
	obj_player.breakbonus += 1
	instance_destroy(self)
	audio_play_sound(sfx_powerup,0,false)
}