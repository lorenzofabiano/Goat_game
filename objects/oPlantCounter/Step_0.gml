if (remainingPLants == 0) and (levelClear = 0) {
	oPlayer.hascontrol = false;
	with (oPlant) and (oGrowingPlant) {
		instance_create_layer(x,y,"Plants",oParticles_end);
		instance_destroy();
		other.levelClear = 1;
	}
}

if (levelClear = 1) and (instance_exists(oPlayer)) {
	if (clearScreenDuration !=0) {
		instance_create_layer(x,y,"Game",oClear);
	}
	else {
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