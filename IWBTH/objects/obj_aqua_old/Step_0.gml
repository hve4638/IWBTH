with (obj_aqua) {
///Dir
if DIR {
    direction=90;
    if D {
     if 0.2<speed {D=!D;}
     speed+=0.01;
    }
    else {
     if speed<-0.2 {D=!D;}
     speed-=0.01;
    }
}

}
var kx, ky;
kx=0; ky=0;

if sx+1<xx {kx=point_distance(sx,0,xx,0)/10;} else if sx<xx {xx=sx;}
if sx-1>xx {kx=-point_distance(sx,0,xx,0)/10;} else if sx>xx {xx=sx;}
if sy+1<yy {ky=point_distance(sy,0,yy,0)/10;} else if sy<yy {yy=sy;} 
if sy-1>yy {ky=-point_distance(sy,0,yy,0)/10;} else if sy>yy {yy=sy;}

sx+=kx; sy+=ky;
x+=kx; y+=ky;

///Phase
if phase==0 && HP<30 ARMOR=0;
else if phase==1 {
    if 10<HP && HP<50 ARMOR=(HP-10)/50;
    else if HP<10 ARMOR=0;
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

///Debug
if cheat && keyboard_check_pressed(ord("K")) {
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

