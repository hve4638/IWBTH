hp=100; onhealth=0;
drawhp=0; xx=x; yy=y;


GlimbR=instance_create(x+27,y-55,obj_golem_part);
GlimbR.image_index=4; GlimbR.speed=0.2;

Ghead=instance_create(x,y,obj_golem_part);
Ghead.image_index=0; Ghead.damage=3;

Gbody=instance_create(x,y,obj_golem_part);
Gbody.image_index=1; Gbody.speed=0.2;
Gbody.damage=1;

GlimbL=instance_create(x-44,y-64,obj_golem_part);
GlimbL.image_index=3; GlimbL.speed=0.2;


Gwaist=instance_create(x,y,obj_golem_part);
Gwaist.image_index=2; Gwaist.speed=0.1;
Gwaist.damage=2;

