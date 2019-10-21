if --fuse<0 {
    if number--==0 instance_destroy();
    else {
        if fuse==-1 {
            if room==rmboss05 scp_shake(3,2,1);
            else scp_shake(10,5,1);
        }// && 
        if instance_exists(target) dir=point_direction(x,y,target.x,target.y);
        for(var i=0;i<n;i++) {
            var j=instance_create(x,y,obj_beam);
            j.direction=dir+i*360/n;
            j.speed=10;
            j.movspd=-1;
            j.minspd=6;
        }
    }
}

///Visible
if show {
    with(sys_part){
        if ++prt[22]==0 event_user(0);
        part_emitter_region(Sys[22],emitter[22],other.x+24,other.x-24,other.y+24,other.y-24,1,1);
        part_emitter_burst(Sys[22],emitter[22],particle[22],1);
    }
    
    image_alpha=max(fuse,0)/10 * 0.6;
    image_angle+=angle_dir;
} else image_alpha=0;

