//menu_x += (menu_x_target - menu_x) / menu_speed;

if (menu_control) {
	if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))) {
		menu_cursor++;
		if (menu_cursor >= menu_items) menu_cursor = 0;
		audio_play_sound(snMenuSelect,10,false);
	}
	if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))) {
		menu_cursor--;
		if (menu_cursor < 0) menu_cursor = menu_items-1;
		audio_play_sound(snMenuSelect,10,false);
	}
	if (keyboard_check_pressed(vk_space) || keyboard_check(ord("Z"))) {
		menu_x_target = gui_width+200;
		menu_committed = menu_cursor;
		//ScreenShake(2,30);
		menu_control = false;
		audio_play_sound(snMenuCommit,10,false);
	}
	
/*	var mouse_y_gui = device_mouse_y_to_gui(0);
	
	if (mouse_y_gui < menu_y) && (mouse_y_gui > menu_top) {
		menu_cursor = (menu_y - mouse_y_gui) div (menu_itemheight * 1.5);
		
	}*/
}
if /*(menu_x > gui_width+150) && */(menu_committed != -1) {
	switch (menu_committed) {
		case 1: default: SlideTransition(TRANS_MODE.NEXT); break;
		case 0: game_end(); break;
	}
}



