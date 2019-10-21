if onhealth {
 var vx,vy,vw,vh;
 vx=__view_get( e__VW.XView, 0 );
 vy=__view_get( e__VW.YView, 0 );
 vw=__view_get( e__VW.WView, 0 );
 vh=__view_get( e__VW.HView, 0 );
 
 if hp==300 {
   if hp!=drawhp {
   if abs(drawhp-hp)<0.05 {drawhp=hp;}
   drawhp+=(hp-drawhp)/36;
  }
 } else if hp!=drawhp {
  if abs(drawhp-hp)<0.2 {drawhp=hp;}
  drawhp+=(hp-drawhp)/10;
 }
 if drawhp==201 {drawhp=200; hp=200;}
 if drawhp==101 {drawhp=100; hp=100;}
 
 
 _p=739*((drawhp-200)/100);
 draw_sprite_ext(spr_bar,5,vx+30,vy+32,1,1,0,c_white,1);
 if 201<drawhp {draw_sprite_part_ext(spr_bar,4,0,0,_p,16,vx+30,vy+32,1,1,c_white,1);}
 
 _p=739*((drawhp-100)/100);
 if 100<drawhp {
  if 201<drawhp draw_sprite_part_ext(spr_bar,4,0,0,739,16,vx+30,vy+32,1,1,c_white,0.5);
  else draw_sprite_part_ext(spr_bar,4,0,0,_p,16,vx+30,vy+32,1,1,c_white,0.5);
 }
 
 _p=739*(drawhp/100);
 if 0<drawhp {
  if 101<drawhp draw_sprite_part_ext(spr_bar,4,0,0,736,16,vx+30,vy+32,1,1,c_white,0.3);
  else draw_sprite_part_ext(spr_bar,4,0,0,_p,16,vx+30,vy+32,1,1,c_white,0.3);
 }
 
 draw_sprite_ext(spr_bar,1,vx+30,vy+32,1,1,0,c_white,1);
}
draw_set_colour(c_black);
draw_text(10,10,string_hash_to_newline(debugtime));
draw_set_colour(c_white);

