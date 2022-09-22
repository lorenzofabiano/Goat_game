if (global.count_up == true) {
	global.time.seconds += 1 / room_speed;
}

if (global.time.seconds < 60) and (global.time.seconds > 59.9) {
	global.time.seconds = 0;
	global.time.minutes += 1;
}

if (global.time.minutes == 60) {
		global.time.minutes = 0;
		global.time.hours += 1;
}





