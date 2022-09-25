var confirm = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("Z"));

if ((confirm) and (page = totalPages) and (committed = false))  {
	SlideTransition(TRANS_MODE.NEXT);
	audio_stop_sound(snMenuTheme);
	audio_play_sound(snGameTheme,1,true);
	committed = true;
}

if (page <= totalPages - 1) and (confirm) page++;

image_index = page;