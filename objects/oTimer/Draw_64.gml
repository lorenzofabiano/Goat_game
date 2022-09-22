if (display == true) {
	var text = Timer(floor(global.time.seconds));

	draw_set_color(make_color_rgb(15,56,15));
	
	draw_text(147,22,text);
	
	draw_set_color(make_color_rgb(155,188,15));

	draw_text(146,21,text);
}