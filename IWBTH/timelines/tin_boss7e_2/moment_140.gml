var dir=point_direction(x,y,Me.x,Me.y)+10;
for(i=0;i<360;i+=10) {
    var j=instance_create(x,y,obj_bloodball);
    j.image_xscale=0.5; j.image_yscale=0.5;
    j.speed=7; j.direction=i+dir+5;
    j.image_alpha=1; j.movdir=-0.4;
    
    var j=instance_create(x,y,obj_bloodball);
    j.image_xscale=0.5; j.image_yscale=0.5;
    j.speed=7; j.direction=i+dir-5;
    j.image_alpha=1; j.movdir=0.4;
}


scp_shake(6,3,0);
scp_sfx(snd_charge,3);

