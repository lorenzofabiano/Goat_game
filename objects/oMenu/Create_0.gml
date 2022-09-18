gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
gui_margin = 32;

menu_x = gui_width - 70;
menu_y = gui_height; //- gui_margin + 70;
menu_x_target = gui_width - gui_margin;
menu_speed = 25; //lower is faster
menu_font = fmenu_font;
menu_itemheight = font_get_size(fmenu_font);
menu_committed = -1;
menu_control = true

menu[1] = "Play";
menu[0] = "Quit";

menu_items = array_length_1d(menu);

menu_top = menu_y - (menu_itemheight * 1.5) * menu_items;
menu_cursor = 1;

