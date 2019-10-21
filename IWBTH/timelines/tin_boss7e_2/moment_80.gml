var dir=point_direction(x,y,Me.x,Me.y)+10;
for(i=0;i<360;i+=20) {
    var j=instance_create(x,y,obj_bloodball);
    j.image_xscale=0.8; j.image_yscale=0.8;
    j.speed=7; j.direction=i+dir+10;
    j.image_alpha=1; j.movdir=-0.8;
    
    var j=instance_create(x,y,obj_bloodball);
    j.image_xscale=0.8; j.image_yscale=0.8;
    j.speed=7; j.direction=i+dir-10;
    j.image_alpha=1; j.movdir=0.8;
}

scp_shake(8,3,0);
scp_sfx(snd_charge,3);

