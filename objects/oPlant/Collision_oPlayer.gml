instance_create_layer(x,y,"Particles",oParticles);
instance_create_layer(x,y,"Plants",oGrowingPlant);
oPlantCounter.remainingPLants -= 1;
audio_play_sound(snGoatEat2,3,false);
instance_destroy();