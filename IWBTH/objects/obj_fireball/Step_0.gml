with (other) {
///Function
if On {
    tempA=direction; tempB=point_direction(x,y,Me.x,Me.y);
    tempB-=tempA;
    if 180<tempB {tempB-=360;}
    if 3<tempB && tempB<180 {
        direction+=speed/1.2;
    } else if -3>tempB && -180<tempB {
        direction-=speed/1.2;
    }
}

if speed>max_speed {speed=max_speed;}
else if speed<min_speed {speed=min_speed;}
speed+=get_speed;

if 1<image_alpha {image_alpha=1;}
else if image_alpha<0 {image_alpha=0;}
image_alpha+=get_alpha;

}
///Particle
var i=type;
var tx, ty;
tx=x+lengthdir_x(speed,direction);
ty=y+lengthdir_y(speed,direction);

with(sys_part) {
    if i==0 { //flame Effect
        if ++prt[2]==0 event_user(0);
        part_emitter_region(Sys[2],emitter[2],tx,tx,ty,ty,0,1);
        part_emitter_burst(Sys[2],emitter[2],particle[2],4);
    } else if i==1 || i==2 { //White&Dark Effect
        if ++prt[9]==0 event_user(0);
        if i==1 part_type_color1(particle[9],c_black);
        else if i==2 part_type_color1(particle[9],c_white);
        part_emitter_region(Sys[9],emitter[9],tx,tx,ty,ty,0,1);
        part_emitter_burst(Sys[9],emitter[9],particle[9],1);   
    } else if i==3 {
        if ++prt[58]==0 event_user(0);
        part_type_alpha2(particle[58],0.8,0.3);
        part_emitter_region(Sys[58],emitter[58],tx+8,tx-8,ty+8,ty-8,1,1);
        part_emitter_burst(Sys[58],emitter[58],particle[58],5);
    } else if i==4 {
        other.image_alpha = 0.9;
        if ++prt[66]==0 event_user(0);
        part_emitter_region(Sys[66],emitter[66],tx+7,tx-7,ty+8,ty-8,1,1);
        part_emitter_burst(Sys[66],emitter[66],particle[66],4);
    }
}

