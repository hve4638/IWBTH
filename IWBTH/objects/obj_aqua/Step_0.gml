with (obj_aqua) {
///Dir
if f_dir {
    f_spd+=0.01;
    if 0.2<f_spd f_dir=!f_dir;
} else {
    f_spd-=0.01;
    if f_spd<-0.2 f_dir=!f_dir;
}
f_y+=f_spd;

}
///Movement
if scp_follow(xx,yy,10)<10 && 15<alarm[0] {alarm[0]=15;}

//if follow && scp_follow(xx,yy,10) follow=false;

///Last Pattern
if timeline_index==tin_boss5L && HP<=20 {
    if K++ mod 120 == 0{
        var dir=point_direction(x,y,Me.x,Me.y);
        for(var i=-75;i<=75;i+=25) {
            var j=instance_create(x,y,obj_beam);
            j.direction=dir+i;
            j.speed=2;
            j.movspd=0;
            j.minspd=2;
        }
    } else if K mod 120 == 30 {
        with(obj_beam) {
            if minspd==2 {
                var j=instance_create(x,y,obj_beam);
                j.direction=direction-15;
                j.speed=speed-0.1;
                j.movspd=0.05;
                j.minspd=0;
                j.maxspd=5;
                
                var j=instance_create(x,y,obj_beam);
                j.direction=direction+15;
                j.speed=speed-0.1;
                j.movspd=0.05;
                j.minspd=0;
                j.maxspd=5;
                
                instance_destroy();
            }
        }
    }
}

if timeline_index==tin_boss5L {
    with(obj_danmaku) {
        var tx, ty;
        tx=x; ty=y;
            with(sys_part) {
                if ++prt[24]==0 event_user(0);
                part_system_depth(Sys[24],-10);
                part_emitter_region(Sys[24],emitter[24],tx-3,tx+3,ty-3,ty+3,ps_shape_ellipse,1);
                part_emitter_burst(Sys[24],emitter[24],particle[24],8);
            }
    }
}

///Bubble
with(obj_danmaku) {
    if tag[0]==1 {
        x=other.x+lengthdir_x(other.bb_dis,other.bb_dir+tag[2]);
        y=other.y+lengthdir_y(other.bb_dis,other.bb_dir+tag[2]);
    }
}

bb_dir-=4;

///Debug
/*
if cheat && keyboard_check_pressed(ord('K')) {
        alarm[0]=-1;
        scp_bosskill(3);
    
        with(obj_cirle) instance_destroy();
        with(obj_spell) {
            repeat(5) instance_create(x+irandom_range(-4,4),y+irandom_range(-4,4),obj_bubble);
            instance_destroy();
        }
        with(obj_danmaku) {
            repeat(5) instance_create(x+irandom_range(-4,4),y+irandom_range(-4,4),obj_bubble);
            instance_destroy();
        }
        with(obj_beam) instance_destroy();
        scp_timeline(tin_boss5Death);
}

/* */
/*  */
