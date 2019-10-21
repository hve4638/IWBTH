var k=choose(1,2,3,4);
if k==t_j k++;
if k==5 k=1;
t_j=k;

if k==1 {
    var i=instance_create(x,432,obj_dball);
    with(i){direction=0; speed=6; Sp=0; On=0;}
    var i=instance_create(x,432,obj_dball);
    with(i){direction=180; speed=6; Sp=0; On=0;}
     
    var i=instance_create(x,432-32*3,obj_dball);
    with(i){direction=0; speed=6; Sp=0; On=0;}
    var i=instance_create(x,432-32*3,obj_dball);
    with(i){direction=180; speed=6; Sp=0; On=0;}
} else if k==2 {
    var i=instance_create(x,432-32,obj_dball);
    with(i){direction=0; speed=6; Sp=0; On=0;}
    var i=instance_create(x,432-32,obj_dball);
    with(i){direction=180; speed=6; Sp=0; On=0;}
    
    var i=instance_create(x,432-32*2,obj_dball);
    with(i){direction=0; speed=6; Sp=0; On=0;}
    var i=instance_create(x,432-32*2,obj_dball);
    with(i){direction=180; speed=6; Sp=0; On=0;}
} else if k==3 {
    var i=instance_create(x,432,obj_dball);
    with(i){direction=0; speed=6; Sp=0; On=0;}
    var i=instance_create(x,432,obj_dball);
    with(i){direction=180; speed=6; Sp=0; On=0;}
    
    var i=instance_create(x,432-32*2,obj_dball);
    with(i){direction=0; speed=6; Sp=0; On=0;}
    var i=instance_create(x,432-32*2,obj_dball);
    with(i){direction=180; speed=6; Sp=0; On=0;}
} else if k==4 {
    var i=instance_create(x,432,obj_dball);
    with(i){direction=0; speed=6; Sp=0; On=0;}
    var i=instance_create(x,432,obj_dball);
    with(i){direction=180; speed=6; Sp=0; On=0;}
    
    var i=instance_create(x,432-32,obj_dball);
    with(i){direction=0; speed=6; Sp=0; On=0;}
    var i=instance_create(x,432-32,obj_dball);
    with(i){direction=180; speed=6; Sp=0; On=0;}
}

if t_i++<10 timeline_position-=15;

