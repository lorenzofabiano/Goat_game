if (instance_exists(oPlayer)) {
	global.count_up = true;
}

if (room == Room1) {
	global.hours = 0;
	global.minutes = 0;
	global.seconds = 0;
}

if (room == Credits) display = false; else display = true;
