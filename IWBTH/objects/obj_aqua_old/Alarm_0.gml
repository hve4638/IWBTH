if !instance_exists(obj_player) exit;

if phase==0 timeline_index=choose(tin_boss5a,tin_boss5b,tin_boss5c,tin_boss5d);
else if phase==1 timeline_index=choose(tin_boss5a_2,tin_boss5b_2,tin_boss5c_2);
timeline_loop=0;
timeline_position=0;
timeline_running=1;
timeline_speed=1;

