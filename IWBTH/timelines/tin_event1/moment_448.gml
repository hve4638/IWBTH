with(p_a) {
    var i=instance_create(x,y,obj_ruinbeam);
    i.pn=other.p_a;
    i.movang=-4;
    
    var i=instance_create(x,y,obj_ruinbeam);
    i.pn=other.p_a;
    i.image_angle+=180;
    i.movang=-4;
}

with(p_b) {
    var i=instance_create(x,y,obj_ruinbeam);
    i.pn=other.p_b;
    i.movang=4;
    
    var i=instance_create(x,y,obj_ruinbeam);
    i.pn=other.p_b;
    i.image_angle+=180;
    i.movang=4;
}
p_i=0;

