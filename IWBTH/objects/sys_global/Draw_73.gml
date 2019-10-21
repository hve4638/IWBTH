if 0<vtime {
    if valpha<1 {valpha+=0.04;}
    vtime-=1;
} else if 0<valpha {valpha-=0.02;}

if 0<valpha{
    draw_sprite_ext(spr_sub,0,__view_get( e__VW.XView, 0 )+400,__view_get( e__VW.YView, 0 )+548-32,1,1,0,c_white,valpha-0.4);
    draw_set_halign(fa_center); draw_set_font(Font1);
    draw_text_colour(__view_get( e__VW.XView, 0 )+400,__view_get( e__VW.YView, 0 )+545-32,string_hash_to_newline(vname),c_white,c_white,c_white,c_white,valpha);
    draw_set_halign(fa_left); draw_set_font(Font0);
}

if showkey {
    var t;
    keyarr[0]=3;
    keyarr[1]=1;
    keyarr[2]=2;
    keyarr[3]=4;
    keyarr[4]=6;
    keyarr[5]=5;
    for(var i=0;i<=5;i++) {
        if ki[keyarr[i]] t=keyarr[i]; else t=0;
        draw_sprite_ext(spr_icon_key,t,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-12-13*(5-i),__view_get( e__VW.YView, 0 )+16,1,1,0,c_white,1);
    }
}

/*
if !(room==Init || room==title || room==rmlastready || room==rmlastboss) {
    draw_set_font(Font2);
    draw_set_alpha(0.5);
    draw_rectangle_colour(view_xview,view_yview+view_hview,view_xview+view_wview,view_yview+view_hview-24,c_black,c_black,c_black,c_black,0);
    draw_set_alpha(1);
    draw_set_color(c_white);
    draw_text(view_xview+4,view_yview+view_hview-20,es('info','death')+": "+string(death));
    draw_set_halign(fa_right);
    draw_text(view_xview+view_wview-4,view_yview+view_hview-20,es('info','time')+": "+string(time));
    draw_set_font(Font0); draw_set_halign(fa_left);
}

/* */
/*  */
