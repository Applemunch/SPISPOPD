/// @description sandbox cheats
if global.sandboxmode == true {
	if string_pos("aplsmashin",keyboard_string) {
		show_debug_message("Super smashing enabled")
		breakbonus = infinity
		keyboard_string = "" //reset the keyboard string to prevent accidental repeats
	}
	if string_pos("autosmash",keyboard_string) {
		show_debug_message("Toggled auto-smash")
		switch autosmash
		{
			case true:
				autosmash = false
				break;
			case false:
				autosmash = true
				break;
		}
		keyboard_string = "" //reset the keyboard string to prevent accidental repeats
	}
}
