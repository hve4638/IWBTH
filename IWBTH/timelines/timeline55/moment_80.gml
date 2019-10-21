var lx, ly, dir, len;
dir=irandom_range(0,359);
len=irandom_range(260,300);
lx=lengthdir_x(len,dir);
ly=lengthdir_y(len,dir);

var j=instance_create(400+lx,304+ly,obj_beamgener);
j.target=Me;
j.fuse=50;
j.number=1;
j.n=9;

t_i-=2;
if -42<t_i timeline_position-=max(ceil(t_i),15);

