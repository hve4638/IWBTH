var rx, ry;
rx=__view_get( e__VW.XView, 0 );
ry=__view_get( e__VW.YView, 0 );
draw_set_alpha(fade_set);
draw_rectangle_colour(rx,ry,rx+__view_get( e__VW.WView, 0 ),ry+__view_get( e__VW.HView, 0 ),fade_col,fade_col,fade_col,fade_col,0);
draw_set_alpha(1);

if dsprite!=noone {
    draw_sprite_ext(dsprite,dimage,__view_get( e__VW.XView, 0 )+dx,__view_get( e__VW.YView, 0 )+dy,1,1,0,c_white,dalpha);
}

if dtext!="" {
    draw_set_font(Font_Ending);
    draw_set_alpha(talpha);
    draw_set_colour(c_white);
    draw_set_halign(fa_center);
    
    draw_text(400,256+8+32,string_hash_to_newline(es("info","time")+": "+string(result_time)));
    draw_text(400,256+8+32+54,string_hash_to_newline(es("info","death")+": "+string(result_death)));
    draw_set_halign(fa_left);
    draw_set_alpha(1);
}

draw_sprite_ext(spr_credit,5,__view_get( e__VW.XView, 0 )+400,__view_get( e__VW.YView, 0 )+500,1,1,0,c_white,palpha);

