draw_self();

if (facil_count[| pos+(8*faci_page)] > 0)
{
	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_set_font(eng22);
	draw_text(x+150, y, "+" + string(facil_count[| pos+(8*faci_page)]));
}

if (image_index == 9)
{
	draw_text(x+10, y+145, string(pyramid));
}
else if (image_index == 15)
{
	draw_text(x+10, y+145, string(global.cheomseongdae));
}