if (remainingPLants == 0) and (levelClear = 0) {
	oPlayer.hascontrol = false;
	with (oPlant) and (oGrowingPlant) {
		instance_create_layer(x,y,"Plants",oParticles_end);
		audio_play_sound(snWipe,0.4,false);
		instance_destroy();
	}
	if (wipeToClearPause = 0) levelClear = 1;
	wipeToClearPause --;
	show_debug_message(wipeToClearPause);
}

if (levelClear = 1) and (instance_exists(oPlayer)) {
	if (clearScreenDuration = 120) {
		instance_create_layer(x,y,"Game",oClear);
		if (room = LastLevel) audio_stop_sound(snGameTheme);
	}
	if (clearScreenDuration = 0) {
		with (oClear) instance_destroy();
		levelClear = 2;
	}
	clearScreenDuration--;
	global.count_up = false;
}

if (levelClear = 2) and (instance_exists(oPlayer)) {
	with (oPlayer) {
		instance_create_layer(x,y,"Instances",oGoatFly);
		instance_destroy();
		oTimer.display = false;
	}
}