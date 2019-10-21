/// @description Health
if onhealth {
    var vx, vy;
    vx=__view_get( e__VW.XView, 0 );
    vy=__view_get( e__VW.YView, 0 );
    
    if HP!=drawhp {
     if abs(drawhp-HP)<0.5 {drawhp=HP;}
     drawhp+=(HP-drawhp)/10;
    }
    
    _p=739*(drawhp/MAXHP);
    draw_sprite_ext(spr_bar,0,vx+30,vy+32,1,1,0,c_white,1);
    draw_sprite_part_ext(spr_bar,5,0,0,_p,16,vx+30,vy+32,1,1,c_white,1);
    draw_sprite_ext(spr_bar,1,vx+30,vy+32,1,1,0,c_white,1);
}

