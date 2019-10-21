if B {
    if x<Me.x image_xscale=-1; else image_xscale=1;
}

if follow && scp_follow(clamp(xx,48,room_width-48),y,12) follow=false;



if phase==0 && HP/MAXHP<=0.75 {
    with(shd) instance_destroy();
    shd=instance_create(x,y+8,obj_charge);
    with(shd) {
        image_xscale=2; image_yscale=2;
        image_alpha=0.5; image_blend=c_purple;
        get_xscale=0.5; get_yscale=0.5;
        get_alpha=-0.02; depth=-25;
        ktime=30;
    }
    phase=1;
}
else if phase==1 && HP/MAXHP<=0.5 {phase=2;}
else if phase==2 && HP/MAXHP<=0.25 {
    phase=3; ARMOR=0.5;
    
}

if phase==0 && instance_exists(shd) {shd.x=x; shd.y=y+8;}

if phase==0 || phase==1 with(sys_lighting) {if sys_lighting.val<110 sys_lighting.val+=1;}
else if phase==2 with(sys_lighting) {if sys_lighting.val<140 sys_lighting.val+=0.3;}
else if phase==3 with(sys_lighting) {if sys_lighting.val<160 sys_lighting.val+=0.3;}
else if phase==-1 with(sys_lighting) {if 10<sys_lighting.val sys_lighting.val-=0.5;}


if S {
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

///Particle
if ds
with(sys_part) {
    if ++prt[33]==0 event_user(0);
    part_emitter_region(Sys[33],emitter[33],other.dsx+46,other.dsx-46,other.dsy+45,other.dsy-45,0,1);
    part_emitter_burst(Sys[33],emitter[33],particle[33],20);
}

if ondie 
with(sys_part) {
    if ++prt[57]==0 event_user(0);
    part_system_depth(Sys[57],-100);
    part_emitter_region(Sys[57],emitter[57],other.x,other.x,other.y+12,other.y+12,ps_shape_ellipse,1);
    part_emitter_burst(Sys[57],emitter[57],particle[57],24);
}

///Last
/*
if beam {
    var d=point_direction(x,y,Me.x,Me.y);
    if (bs<=be && bs<=d && d<=be) || (be<bs && (d<=bs || be<=d)) {
        scp_kill();
    }
}


if mouse_check_button(mb_left) bs=point_direction(x,y,mouse_x,mouse_y);
if mouse_check_button(mb_right) be=point_direction(x,y,mouse_x,mouse_y);

/* */
/*  */
