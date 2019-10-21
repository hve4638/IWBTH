if onhealth{
 if lastpt {
  if 201<hp {hp=201;}
  else if 101<hp {hp=101;}
  else if 0<hp {hp=0;}
 } else {
  var i=instance_create(x,y,obj_charge);
  i.ktime=10;
  i.get_xscale=0.3;
  i.get_yscale=0.3;
  i.get_alpha=-0.1; 
  if 205<hp {hp-=0.5;}
  else if 105<hp && hp<201 {hp-=0.5;}
  else if 5<hp && hp<101 {hp-=0.5;}
 }
 for(var i=0;i<=5;i++){
  var k=instance_nearest(x,y,obj_bullet);
  if distance_to_object(k)<180 {with(k){instance_destroy();}}
  else break;
 }
}

