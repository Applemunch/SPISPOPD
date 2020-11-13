draw_set_font(fnt_comic)
draw_text(0,0,string(global.points))
draw_set_halign(fa_center)
if global.seconds < 10 {
	draw_text(window_get_width() / 2,0,string(global.minutes) + ":0" + string(global.seconds))
} else {
	draw_text(window_get_width() / 2,0,string(global.minutes) + ":" + string(global.seconds))
}
draw_set_halign(fa_left)