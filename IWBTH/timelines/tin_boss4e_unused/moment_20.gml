switch(++t)
{
    case 1: {
        a1=instance_create(0,0,obj_warning3);
        a1.On=true; a1.image_angle=-45;
    } break;
    case 2: {
        a2=instance_create(room_width,room_height,obj_warning3);
        a2.On=true; a2.image_angle=45;
    } break;
    case 3: {
        a3=instance_create(room_width,0,obj_warning3);
        a3.On=true; a3.image_angle=-45;
    } break;
    case 4: {
        a4=instance_create(0,room_height,obj_warning3);
        a4.On=true; a4.image_angle=45;
    } break;
}
if t<=4 timeline_position-=5;
else t=0;

