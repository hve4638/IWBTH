if !instance_exists(obj_player) exit;

if nx {
    scp_timeline(tin_boss3a);
    nx--;
}
else {
    scp_timeline(tin_boss3b);
    nx=irandom_range(2,4);
}

