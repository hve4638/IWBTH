/*if On {
    draw_set_font(Font2);
    draw_set_colour(c_black);
    draw_set_valign(fa_middle);
    draw_set_halign(fa_center);

    var j=ds_list_find_value(d_t,0);
    draw_sprite(spr_keyinput,j,Me.x,Me.y-48);	
    if 1<ds_list_size(d_t)
	{
        var j=ds_list_find_value(d_t,1);
        draw_sprite_ext(spr_keyinput,j,Me.x+32,Me.y-40,0.6,0.6,0,c_white,0.6);
    }
    
    
    draw_set_valign(fa_top);
    draw_set_halign(fa_left);
}

