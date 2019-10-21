var i=instance_create(Me.x+irandom_range(-96,96),32,obj_dlasergener);
i.dirx=Me.x; i.diry=Me.y;

var i=instance_create(Me.x+irandom_range(-32,96),32,obj_dlasergener);
i.dirx=Me.x+48; i.diry=Me.y;

var i=instance_create(Me.x+irandom_range(-96,32),32,obj_dlasergener);
i.dirx=Me.x-48; i.diry=Me.y;

var i=instance_create(Me.x+irandom_range(-128,128),32,obj_dlasergener);
i.dirx=Me.x+96; i.diry=Me.y;

var i=instance_create(Me.x+irandom_range(-128,128),32,obj_dlasergener);
i.dirx=Me.x-96; i.diry=Me.y;



if t_i++<15 timeline_position-=5;
else t_i=30;

