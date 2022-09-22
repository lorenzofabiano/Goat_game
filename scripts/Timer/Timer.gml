// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Timer(seconds){
	var text = "";
	
	if (global.time.seconds < 10) and (global.time.minutes < 10) {
		text = string(global.time.minutes) + ":0" + string(seconds);
	}
	else if (global.time.seconds >= 10) and (global.time.minutes >= 10) {
		text = string(global.time.minutes) + ":" + string(seconds);
	}
	else if (global.time.seconds < 10) and (global.time.minutes >= 10) {
		text = string(global.time.minutes) + ":0" + string(seconds);
	}
	else if (global.time.seconds >= 10) and (global.time.minutes < 10) {
		text = string(global.time.minutes) + ":" + string(seconds);
	}
	return text;
}