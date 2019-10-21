var lx, ly, dir, len, tx, ty;
dir=irandom_range(0,359);
len=260;//irandom_range(260,300);
lx=lengthdir_x(len,dir);
ly=lengthdir_y(len,dir);
tx=clamp(Me.x+lx,64,800-64);
ty=clamp(Me.x+ly,64,608-64);
var j=instance_create(tx,ty,obj_beamgener);
j.target=Me;
j.fuse=50;
j.number=1;
j.n=9;

t_i-=2;
if t_i==-28 {
    with(obj_water) vspeed=2;
}

if -42<t_i timeline_position-=max(ceil(t_i),15);

