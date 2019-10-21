var j=instance_create(Me.x-64,Me.y,obj_watergener);
j.target=Me;
j.fuse=100;
j.number=20;
j.n=12;

var j=instance_create(Me.x+64,Me.y,obj_watergener);
j.target=Me;
j.fuse=100;
j.number=20;
j.n=12;

if t_i++ < 40 {
    timeline_position-=10;
} else {
    t_i=0;
}

