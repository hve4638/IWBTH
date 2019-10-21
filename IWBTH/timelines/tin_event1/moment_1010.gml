if instance_exists(p_c) || instance_exists(p_d) timeline_position--;
else {
    p_c=instance_create(128,608,obj_autogolem);
    p_d=instance_create(800-128,608,obj_autogolem);
    with(p_c) {speed=12.5; direction=90; movspd=-0.3; type=0; sleep=50;}
    with(p_d) {speed=12.5; direction=90; movspd=-0.3; type=0; sleep=50;}
}

