if !instance_exists(obj_player) exit;

if 30<HP {
    var k=irandom_range(1,22);
    var i=instance_create(832+32*k,448,obj_waring);
    with(i) {alarm[0]=80; image_single=0;}
    
    
    nx_x=832+32*k;
    
    if random(1)<0.2 nx_t=tin_boss2_new4;
    else nx_t=choose(tin_boss2_new1,tin_boss2_new2,tin_boss2_new3);
} else {
    var i=instance_create(1184,400,obj_waring);
    with(i) {alarm[0]=80; image_single=0;}
    
    nx_x=1184;
    nx_y=400;
    nx_t=tin_boss2lp;
}

alarm[0]=80;

