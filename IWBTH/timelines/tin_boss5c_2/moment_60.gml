var t_d=choose(0,1);
if t_i++ < 8 {
    for(var i=0;i<3;i++) {
        var j=instance_create(Me.x+t_x[i]*6,Me.y+t_y[i]*6,obj_watergener);
        var k=sign(j.angle_dir);
        j.image_index=1;
        j.image_angle=45*t_d-k*4;
        j.dir=45*t_d;
        j.fuse=40;
        j.number=20;
        j.n=4;
        j.angle_dir=k*0.2;
        if i!=2 j.show=false;
    }
    
    timeline_position-=35;
    t_p=!t_p;
}

