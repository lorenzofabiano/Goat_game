var confirm = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("Z"));

if (confirm and page = totalPages) {
	SlideTransition(TRANS_MODE.NEXT);
}

if (page <= totalPages - 1) and (confirm) page++;

image_index = page;