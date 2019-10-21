var tp;

if start {
    tp=tin_boss6a;
    start=false;
}
else do {
    if phase==0 tp=choose(tin_boss6a,tin_boss6b,tin_boss6c);
    else if phase==1 tp=choose(tin_boss6a,tin_boss6b,tin_boss6c,tin_boss6d,tin_boss6e);
    else tp=choose(tin_boss6a,tin_boss6c_2,tin_boss6d,tin_boss6e);
} until (tp!=pp)

if instance_exists(obj_player) scp_timeline(tp);
pp=tp;

//scp_timeline(tin_boss6d);

