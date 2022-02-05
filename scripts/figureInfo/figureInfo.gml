function figureInfo(type){
	draw_set_halign(fa_center);
	draw_set_color(c_black);
	draw_set_font(eng32);
	draw_text(x+300, y+100, symbolDesc(type, 1));
	draw_sprite(spr_symbol, type, x+300, y+300);
	draw_set_font(eng22);
	draw_text(x+300, y+450, symbolDesc(type, 2));
	
	draw_set_font(eng18);
	draw_set_color(c_dkgray);
	draw_text(x+300, y+70, "figure");
	
	if (type == 69)
	{
		draw_set_font(eng22);
		draw_set_halign(fa_center);
		draw_set_color(c_red);
		draw_text(x+220, y+340, string(5+era));
		draw_sprite(spr_shield, 0, x+380, y+335);
		draw_set_color(c_black);
		draw_text(x+380, y+340, string(13+(era*2)));
		draw_reset();
	}
	if (type == 71)
	{
		draw_set_font(eng22);
		draw_set_halign(fa_center);
		draw_set_color(c_red);
		draw_text(x+220, y+340, string(4+era));
		draw_sprite(spr_shield, 0, x+380, y+335);
		draw_set_color(c_black);
		draw_text(x+380, y+340, string(8+(era*2)));
		draw_reset();
	}
	else
	{
		draw_set_font(eng26);
		draw_set_halign(fa_center);
		draw_set_color(c_grey);
		draw_text(x+380, y+210, string(20));
	}
}