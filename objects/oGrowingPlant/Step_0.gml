if (currentgrowtime < maxgrowtime and currentgrowtime > maxgrowtime * 0.66) image_index = 0;

if (currentgrowtime <= maxgrowtime * 0.66 and currentgrowtime > maxgrowtime * 0.33) image_index = 1;
if (currentgrowtime <= maxgrowtime * 0.33 and currentgrowtime > maxgrowtime * 0) image_index = 2;

if (currentgrowtime = 0) {
	instance_create_layer(x,y,"Plants",oPlant);
	oPlantCounter.remainingPLants += 1;
	instance_destroy();
}


currentgrowtime --;




