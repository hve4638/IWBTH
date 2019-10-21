if enable {
    if 5<=t++ {
        with(sys_global) {
            ki[other.image_index]=true;
            event_user(0);
        }
        instance_destroy();
    }
}

scp_light(x+16,y+16,48);

