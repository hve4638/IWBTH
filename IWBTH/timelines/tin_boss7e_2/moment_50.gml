var dir=point_direction(x,y,Me.x,Me.y);
for(i=0;i<360;i+=12) {
    var j=instance_create(x+32,y,obj_bloodball);
    j.image_xscale=0.5; j.image_yscale=0.5;
    j.direction=i; j.speed=7;
    j.image_alpha=1;
}

for(i=0;i<360;i+=12) {
    var j=instance_create(x-32,y,obj_bloodball);
    j.image_xscale=0.5; j.image_yscale=0.5;
    j.direction=i+6; j.speed=7;
    j.image_alpha=1;
}

scp_shake(6,4,0);
scp_sfx(snd_charge,3);

