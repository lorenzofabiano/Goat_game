/// @description Draw menu

draw_set_font(menu_font);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

for (var i = 0; i < menu_items; i++) {
	var offset = 2;
	var txt = menu[i];
	if (menu_cursor == i) {
//		txt = string_insert("-> ", txt, 0);
		var col = make_color_rgb(155,188,15);
	} 
	else {
		var col = make_color_rgb(48,98,48);
	}
	var xx = menu_x;
	var yy = menu_y - (menu_itemheight * (i * 1.5));
	draw_set_color(make_color_rgb(15,56,15));
	draw_text(xx-offset,yy,txt);
	draw_text(xx+offset,yy,txt);
	draw_text(xx,yy+offset,txt);
	draw_text(xx,yy-offset,txt);
	draw_set_color(col);
	draw_text(xx,yy,txt);
}


