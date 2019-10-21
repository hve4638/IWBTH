scp_shake(2,75,1);
scp_sfx(snd_Explode2,3);

y=436; image_index=1;
follow=false;
alarm[0]=-1; S=0; A=0;
depth=-25; speed=0;
phase=-1; ds=0; B=0;

var i=instance_create(x,y,obj_meteo); i.ep=1;
var i=instance_create(x,y+30,obj_meteo); i.ep=1;
var i=instance_create(x,y+60,obj_meteo); i.ep=1;
 
with(sys_lighting) persistent=true;

