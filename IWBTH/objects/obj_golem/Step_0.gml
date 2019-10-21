var kx, ky;
kx=0; ky=0;

if x+1<xx {kx=point_distance(x,0,xx,0)/5;} else if x<xx {xx=x;}
if x-1>xx {kx=-point_distance(x,0,xx,0)/5;} else if x>xx {xx=x;}
if y+1<yy {ky=point_distance(y,0,yy,0)/5;} else if y<yy {yy=y;} 
if y-1>yy {ky=-point_distance(y,0,yy,0)/5;} else if y>yy {yy=y;}

x+=kx; y+=ky;
with(obj_golem_part) {x+=kx; y+=ky;}


if hp<0 {
 timeline_running=0;
 with(obj_player) { 
  persistent=1; x-=736; image_alpha=0.9;
 }
 audio_play_sound(snd_Explode,0,0);
 room_goto(rmstage01b);
}

