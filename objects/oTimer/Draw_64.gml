
if (display == true) {
	draw_set_color(make_color_rgb(15,56,15));
	if (global.seconds < 10) and (global.minutes < 10) {
		draw_text(142,22, /*string(global.hours) + ":0" + */string(global.minutes) + ":0" + string(floor(global.seconds)));
	}
	else if (global.seconds >= 10) and (global.minutes >= 10) {
		draw_text(142,22, /*string(global.hours) + ":" + */string(global.minutes) + ":" + string(floor(global.seconds)));
	}
	else if (global.seconds < 10) and (global.minutes >= 10) {
		draw_text(142,22, /*string(global.hours) + ":" */+ string(global.minutes) + ":0" + string(floor(global.seconds)));
	}
	else if (global.seconds >= 10) and (global.minutes < 10) {
		draw_text(142,22, /*string(global.hours) + ":0" + */string(global.minutes) + ":" + string(floor(global.seconds)));
	}

	draw_set_color(make_color_rgb(155,188,15));

	if (global.seconds < 10) and (global.minutes < 10) {
		draw_text(141,21, /*string(global.hours) + ":0" + */string(global.minutes) + ":0" + string(floor(global.seconds)));
	}
	else if (global.seconds >= 10) and (global.minutes >= 10) {
		draw_text(141,21, /*string(global.hours) + ":" + */string(global.minutes) + ":" + string(floor(global.seconds)));
	}
	else if (global.seconds < 10) and (global.minutes >= 10) {
		draw_text(141,21, /*string(global.hours) + ":" */+ string(global.minutes) + ":0" + string(floor(global.seconds)));
	}
	else if (global.seconds >= 10) and (global.minutes < 10) {
		draw_text(141,21, /*string(global.hours) + ":0" + */string(global.minutes) + ":" + string(floor(global.seconds)));
	}
}
