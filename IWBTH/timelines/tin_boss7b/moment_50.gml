var k=p_j;
while(p_j==k) {
    var i=0;
    k=0;
    ds_list_shuffle(ds_tmp);
    repeat(4) k+=ds_list_find_value(ds_tmp,i++)*(i+1);
}
p_j=k;

for(var i=0;i<4;i++) {
    if !ds_list_find_value(ds_tmp,i) continue;
    
    var l=instance_create(x-image_angle*32,448+12-i*40-64,obj_bloodball);
    l.sleep=35;
    l.movspd=0.8; l.speed=0;
    l.depth=-20;
    l.maxspd=16;
    l.direction=90+image_xscale*90;
    scp_sfx(snd_magic2,2);
}


p_i++;
if p_i<=3 timeline_position-=30;

