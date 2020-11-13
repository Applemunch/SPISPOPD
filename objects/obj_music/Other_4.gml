if room == room_1 {
	global.music = mus_smashing
}
if room = room_title {
	global.music = mus_title
}

if !audio_is_playing(global.music) {
	audio_stop_all()
	audio_play_sound(global.music,1,true)
}