if On {tx=Me.x; ty=Me.y;}

if x+3<tx {x+=point_distance(x,0,tx,0)/9;} else if x<tx {x=tx;}
if x-3>tx {x-=point_distance(x,0,tx,0)/9;} else if x>tx {x=tx;}
if y+3<ty {y+=point_distance(y,0,ty,0)/9;} else if y<ty {y=ty;} 
if y-3>ty {y-=point_distance(y,0,ty,0)/9;} else if y>ty {y=ty;}

image_alpha+=get_alpha;
if 1<image_alpha {image_alpha=1;}
else if image_alpha<0 {instance_destroy();}

