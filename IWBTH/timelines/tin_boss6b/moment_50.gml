var k=p_j;
while(p_j==k) {
    var i=0;
    k=0;
    ds_list_shuffle(t);
    repeat(4) k+=ds_list_find_value(t,i++)*(i+1);
}
p_j=k;

for(var i=0;i<4;i++) {
    if !ds_list_find_value(t,i) continue;
    var l=instance_create(x-image_angle*32,448+12-i*40,obj_blade);
    l.movspd=0.5; l.speed=-5;
    l.image_xscale=0.7;
    l.image_yscale=0.7;
    l.image_angle=irandom_range(0,359);
    l.image_alpha=random_range(0.4,0.7);
    l.maxspd=16;
    l.movang=irandom_range(24,32)*image_xscale;
    l.direction=90+image_xscale*90;
}

if p_i++<3 timeline_position-=30;

