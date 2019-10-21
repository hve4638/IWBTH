draw_self();

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

 _p=739*(drawhp/200);
 draw_sprite_ext(spr_bar,0,vx+30,vy+32,1,1,0,c_white,1);
 draw_sprite_part_ext(spr_bar,3,0,0,_p,16,vx+30,vy+32,1,1,c_white,1);
 draw_sprite_ext(spr_bar,1,vx+30,vy+32,1,1,0,c_white,1);
}

///After Image


for(var i=8;0<i;i--){
 for(var j=0;j<=8;j++){
  aft[i,j]=aft[i-1,j];
 }
} if onAfter {
 aft[0,0]=sprite_index; aft[0,1]=image_index;
 aft[0,2]=x; aft[0,3]=y;
 aft[0,4]=image_xscale; aft[0,5]=image_yscale;
 aft[0,6]=image_angle; aft[0,7]=image_blend;
 aft[0,8]=image_alpha;
} else {aft[0,0]=noone;}

for(var i=0;i<9;i++) if aft[i,0]!=noone {
 draw_sprite_ext(aft[i,0],aft[i,1],aft[i,2],aft[i,3],aft[i,4],aft[i,5],aft[i,6],aft[i,7],aft[i,8]*(9-i/10));
}

