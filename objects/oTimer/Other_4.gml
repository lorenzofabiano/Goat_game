if (instance_exists(oPlayer)) {
	global.count_up = true;
}

if (room == Room1) {
	global.time.hours = 0;
	global.time.minutes = 0;
	global.time.seconds = 0;
}

if (room == Credits) || (room = Menu) || (room = Tutorial) || (room = FinalScore) display = false; else display = true;
