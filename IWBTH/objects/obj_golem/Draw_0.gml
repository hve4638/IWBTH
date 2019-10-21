if onhealth {
 var vx,vy,vw,vh;
 vx=__view_get( e__VW.XView, 0 );
 vy=__view_get( e__VW.YView, 0 );
 vw=__view_get( e__VW.WView, 0 );
 vh=__view_get( e__VW.HView, 0 );
 
 if hp!=drawhp {
  if abs(drawhp-hp)<0.1 {drawhp=hp;}
  drawhp+=(hp-drawhp)/10;
 }

 _p=739*(drawhp/100);
 draw_sprite_ext(spr_bar,0,vx+30,vy+32,1,1,0,c_white,1);
 draw_sprite_part_ext(spr_bar,2,0,0,_p,16,vx+30,vy+32,1,1,c_white,1);
 draw_sprite_ext(spr_bar,1,vx+30,vy+32,1,1,0,c_white,1);
}

with(sys_part){
    if ++prt[5]==0 event_user(0);
    part_emitter_region(Sys[5],emitter[5],other.x+35,other.x-35,other.y+50,other.y-50,0,1);
    part_emitter_burst(Sys[5],emitter[5],particle[5],15);
}

