with(p_a) {speed=0; direction=0; movspd=1; type=1; maxspd=12;}
with(p_b) {speed=0; direction=180; movspd=1; type=1; maxspd=12;}

if p_i++<4 {
    var p_t;
    if p_i==1 p_t=32;
    else if p_i==2 p_t=48;
    else if p_i==3 p_t=16;
    else if p_i==4 p_t=4;
    p_a=instance_create(128,p_t,obj_autogolem);
    p_b=instance_create(800-128,p_t,obj_autogolem);
    with(p_a) {speed=14.5; direction=-90; movspd=-0.3; type=-1; HP=20; MAXHP=20; life=200;}
    with(p_b) {speed=14.5; direction=-90; movspd=-0.3; type=-1; HP=20; MAXHP=20; life=200;}
    timeline_position-=50;
}


