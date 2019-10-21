with (other) {
i.angle+=1;
i.speed+=1;
i.direction=point_direction(i.x,i.y,x,y);


if 16<distance_to_point(i.x,i.y) {timeline_position-=1;}
else {i.angle=0; i.speed=0;}
//timeline_position=0;

}
