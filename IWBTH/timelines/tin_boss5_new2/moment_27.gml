if point_distance(x,y,xx,yy)<64 {
    with(t_i) {
        var i=0;
        dv=4;
        todir=270+40;
        onAfter=1;
        repeat(8) {
            var j=instance_create(x,y,obj_aquasword);
            j.dv=dv;
            j.todir=todir;
            j.target=target;
            j.image_angle=image_angle-12*i;
            image_alpha=0;
            
            i++;
        }
    }
    repeat(3) scp_sfx(snd_sword2,3);
} else timeline_position--;

