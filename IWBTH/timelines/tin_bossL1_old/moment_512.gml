var k=choose(1,2,3,4);
if k==psk {k+=1;}
if k==5 {k=1;}
psk=k;

if k==1 {
 var i=instance_create(x,432,obj_dball);
 with(i){direction=0; speed=5; Sp=0; On=0;}
 var i=instance_create(x,432,obj_dball);
 with(i){direction=180; speed=5; Sp=0; On=0;}
 
 var i=instance_create(x,432-32*3,obj_dball);
 with(i){direction=0; speed=5; Sp=0; On=0;}
 var i=instance_create(x,432-32*3,obj_dball);
 with(i){direction=180; speed=5; Sp=0; On=0;}
} else if k==2 {
 var i=instance_create(x,432-32,obj_dball);
 with(i){direction=0; speed=5; Sp=0; On=0;}
 var i=instance_create(x,432-32,obj_dball);
 with(i){direction=180; speed=5; Sp=0; On=0;}
 
 var i=instance_create(x,432-32*2,obj_dball);
 with(i){direction=0; speed=5; Sp=0; On=0;}
 var i=instance_create(x,432-32*2,obj_dball);
 with(i){direction=180; speed=5; Sp=0; On=0;}
} else if k==3 {
 var i=instance_create(x,432,obj_dball);
 with(i){direction=0; speed=5; Sp=0; On=0;}
 var i=instance_create(x,432,obj_dball);
 with(i){direction=180; speed=5; Sp=0; On=0;}
 
 var i=instance_create(x,432-32*2,obj_dball);
 with(i){direction=0; speed=5; Sp=0; On=0;}
 var i=instance_create(x,432-32*2,obj_dball);
 with(i){direction=180; speed=5; Sp=0; On=0;}
} else if k==4 {
 var i=instance_create(x,432,obj_dball);
 with(i){direction=0; speed=5; Sp=0; On=0;}
 var i=instance_create(x,432,obj_dball);
 with(i){direction=180; speed=5; Sp=0; On=0;}
 
 var i=instance_create(x,432-32,obj_dball);
 with(i){direction=0; speed=5; Sp=0; On=0;}
 var i=instance_create(x,432-32,obj_dball);
 with(i){direction=180; speed=5; Sp=0; On=0;}
}

if ps<20 {ps++; timeline_position-=25;}
else {ps=0; xx=374; yy=230;}

