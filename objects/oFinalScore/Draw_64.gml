draw_set_color(make_color_rgb(0,0,0));

if (array_length(global.scores) > 0) {
	for(var i = 0; i < array_length(global.scores); i += 1) {
		draw_text(105, 25 * (i + 1), string(i + 1) + ". " + string(global.scores[i]));
	}
}