var j=1;
repeat(4+(phase==3)) {
    var i=instance_create(x,480+16,obj_whitechunk);
    i.speed=1; i.direction=180;
    i.movspd=j*0.2; i.maxspd=20; i.movang=16;
    if 2<j {
        if 2<=phase i.r=1;
    }
    
    var i=instance_create(x,480+16,obj_whitechunk);
    i.speed=1; i.direction=0;
    i.movspd=j*0.2; i.maxspd=20; i.movang=-16;
    if 2<j {
        if 2<=phase i.r=1;
    }
    j++;
}

