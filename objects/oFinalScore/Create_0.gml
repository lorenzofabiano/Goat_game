array_insert(global.scores,0,Timer(global.time.seconds));

if (array_length(global.scores) > 5) {
	array_resize(global.scores,5);
}
 
 