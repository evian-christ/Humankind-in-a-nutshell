if (t_shake > 0 && main == Id)
{
	draw_sprite_ext(sprite_index, image_index, x  + irandom_range(-5, 5), y + irandom_range(-5, 5), image_xscale, image_yscale, image_angle, image_blend, image_alpha)
}
else if (t_shakeO > 0 && object == Id)
{
	draw_sprite_ext(sprite_index, image_index, x  + irandom_range(-5, 5), y + irandom_range(-5, 5), image_xscale, image_yscale, image_angle, image_blend, image_alpha)
}
else
{
	draw_self();
}

#region indicator
if (main == Id && pos == obj_spin.interact_slot)
{
	draw_set_colour(c_green);
	draw_set_alpha(0.3);
	draw_rectangle(x-105, y-100, x+105, y+100, 0);
	draw_reset();
}
else if (main == Id && pos == obj_spin.interact_slot-20)
{
	draw_set_colour(c_red);
	draw_set_alpha(0.3);
	draw_rectangle(x-105, y-100, x+105, y+100, 0);
	draw_reset();
}
#endregion

#region draw stats

if (isHuman(Id))
{
	draw_set_font(eng22);
	draw_set_halign(fa_center);
	draw_set_color(c_green);
	draw_text(x+80, y+40, string(h_food[| Id]));
	
	draw_set_color(c_dkgray);
	draw_text(x-80, y+40, string((100-h_curProd[| Id])/h_turnProd[| Id]));
	draw_reset();
}
else if (isBase(Id))
{
	draw_set_font(eng22);
	draw_set_halign(fa_center);
	draw_set_color(c_black);
	draw_text(x,y-90,string(s_prodCount[| Id]) + "/" + string(prod_needed(id_to_type(Id))));
}
else if (isTroop(Id) || isEnemy(Id))
{
	draw_set_font(eng22);
	draw_set_halign(fa_center);
	draw_set_color(c_red);
	draw_text(x-80, y+40, string(s_cp[| Id]));
	draw_sprite(spr_shield, 0, x+80, y+35);
	draw_set_color(c_black);
	draw_text(x+80, y+40, string(s_armor[| Id]));
	draw_reset();
}

#endregion