if onhealth {
    if hp!=drawhp {
     //if abs(drawhp-hp)<0.5 {drawhp=hp;}
     drawhp+=(hp-drawhp)/10;
    }
    _p=739*(drawhp/220);
    draw_sprite_ext(spr_bar,0,30,32,1,1,0,c_white,1);
    draw_sprite_part_ext(spr_bar,5,0,0,_p,16,30,32,1,1,c_white,1);
    draw_sprite_ext(spr_bar,1,30,32,1,1,0,c_white,1);
}

