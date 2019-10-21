var j=distance_to_point(Me.x,Me.y)+96;
k=point_direction(x,y,Me.x,Me.y);

i=instance_create(x+lengthdir_x(j,k),y+lengthdir_y(j,k),obj_scythe);
i.image_alpha=0.1;
i.alpha=0.1;
i.angle=8;
i.OnAfter=1;

