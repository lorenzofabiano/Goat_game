var confirm = keyboard_check_pressed(vk_space);

if (confirm and page = totalPages) SlideTransition(TRANS_MODE.GOTO(Menu));

if (page <= totalPages - 1) and (confirm) page++;

image_index = page;