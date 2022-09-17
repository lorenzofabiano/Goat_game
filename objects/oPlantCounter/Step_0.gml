if (remainingPLants == 0) {
	oPlayer.hascontrol = false;
	with (oPlant) and (oGrowingPlant) {
		instance_create_layer(x,y,"Plants",oParticles_end);
		instance_destroy();
	}
}