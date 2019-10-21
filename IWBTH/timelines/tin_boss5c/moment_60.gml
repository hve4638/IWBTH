if t_i++ < 6 {
    for(var i=0;i<3;i++) {
        var j=instance_create(Me.x+t_x[i]*6,Me.y+t_y[i]*6,obj_watergener);
        j.image_index=1;
        j.dir=45*t_p;
        j.fuse=50;
        j.number=20;
        j.n=4;
        if i!=2 j.show=false;
    }
    
    timeline_position-=20;
    t_p=!t_p;
}

