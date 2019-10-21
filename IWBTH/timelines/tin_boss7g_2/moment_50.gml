var dir=point_direction(x,y,Me.x,Me.y)
for(var i=0;i<360;i+=10) {
    var j=instance_create(x,y,obj_chain);
    j.direction=i+dir; j.movspd=2;
    j.b_up=1;
}

