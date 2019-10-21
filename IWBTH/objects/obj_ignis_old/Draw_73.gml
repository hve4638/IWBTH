if burn>0 burn_alpha+=0.02;
else burn_alpha-=0.04;
burn_alpha=clamp(burn_alpha,0,1);
draw_background_ext(bg_burn,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),1,1,0,c_white,burn_alpha*0.7);

