if image_alpha<1
{
    image_alpha=clamp(image_alpha+0.1,0,1);
    timeline_position--;
}
else 
{
    init_part = false;
    event_user(0);
    with(sys_global) {vname=es("boss","karena"); vtime=100;}
}

