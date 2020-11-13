if keyboard_check_pressed(ord("Z")) {
	room_goto(room_1)
}
if string_pos("idgofuckyourself",keyboard_string) or string_pos("aplsandbox",keyboard_string) { //haha funy cheat gocode!!!!!!!!!!!! Enables sandbox mode
	room_goto(room_1)
	global.sandboxmode = true
}
if string_pos("thefitnessgrampacertestisamultistageaerobiccapacitytestthatprogressivelygetsmoredifficultasitcontinuesthetwentymeterpacertestwillbegininthirtysecondslineupatthestarttherunningspeedstartsslowlybutgetsfastereachminuteafteryouhearthissoundremembertoruninastraightlineandrunaslongaspossiblethesecondtimeyoufailtocompletealapbeforethesoundyourtestisoverthetestwillbeginonthewordstartonyourmarkgetreadystart",keyboard_string) { //really?
	idspispopd = true
	audio_stop_all()
}
//if string_pos("idspispopd",keyboard_string) { //a more easy way. enable if you are a little bitch like me
//	idspispopd = true
//	audio_stop_all()
//}