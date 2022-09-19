if (remainingPLants == 0) and (levelClear = false) {
	oPlayer.hascontrol = false;
	with (oPlant) and (oGrowingPlant) {
		instance_create_layer(x,y,"Plants",oParticles_end);
		instance_destroy();
		other.levelClear = true;
	}
	//SlideTransition(TRANS_MODE.NEXT);
}
if (levelClear = true) and (instance_exists(oPlayer)) {
	with (oPlayer) {
		instance_create_layer(x,y,"Instances",oGoatFly);
		instance_destroy();
	}
}