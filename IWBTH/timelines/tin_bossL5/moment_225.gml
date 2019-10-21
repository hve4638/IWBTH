for(i=0;i<360;i+=10) {
    var lx=lengthdir_x(500,i);
    var ly=lengthdir_y(500,i);
    var dir=point_direction(lx,ly,0,0);
    var j=instance_create(400+lx,304+ly,obj_dball2);
    j.direction=dir-28;
    j.speed=4;
    j.movspd=0.1;
    j.maxspd=8;
    j.dirtime=2;
    j.movdir=1;
    
    var lx=lengthdir_x(500,i);
    var ly=lengthdir_y(500,i);
    var dir=point_direction(lx,ly,0,0);
    var j=instance_create(400+lx,304+ly,obj_dball2);
    j.direction=dir+28;
    j.speed=4;
    j.movspd=0.1;
    j.maxspd=8;
    j.dirtime=2;
    j.movdir=-1;
}   

