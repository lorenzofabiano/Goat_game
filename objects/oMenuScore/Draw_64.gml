if (global.gamefinish = true) {
	draw_set_color(make_color_rgb(15,56,15));
	
	var text = Timer(global.time.seconds);

	draw_text(152,22, string("Score : ") + text);

	draw_set_color(make_color_rgb(155,188,15));
	
	draw_text(151,21, string("Score : ") + text);
}



