if burn>0 burn_alpha+=0.02;
else burn_alpha-=0.04;
burn_alpha=clamp(burn_alpha,0,1);
draw_background_ext(bg_burn,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),1,1,0,c_white,burn_alpha*0.7);

///Health Bar
if onhealth {
    var vx,vy,vw,vh;
    vx=__view_get( e__VW.XView, 0 );
    vy=__view_get( e__VW.YView, 0 );
    vw=__view_get( e__VW.WView, 0 );
    vh=__view_get( e__VW.HView, 0 );
    
    if HP!=drawhp {
     //if abs(drawhp-HP)<0.1 {drawhp=HP;}
     drawhp+=(HP-drawhp)/10;
    }
    
    _p=739*(drawhp/MAXHP);
    draw_sprite_ext(spr_bar,0,vx+30,vy+32,1,1,0,c_white,1);
    draw_sprite_part_ext(spr_bar,3,0,0,_p,16,vx+30,vy+32,1,1,c_white,1);
    draw_sprite_ext(spr_bar,1,vx+30,vy+32,1,1,0,c_white,1);
}

