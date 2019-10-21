if !instance_exists(obj_player) exit;

if OnInv timeline_index=tin_boss4lp;
else {
    if random(1)<0.75 pretype=!pretype;
    if pretype {
        timeline_index=choose(tin_boss4c,tin_boss4d);
    } else {
        timeline_index=choose(tin_boss4a,tin_boss4b);
    }
}
timeline_position=0;
timeline_running=1;

switch(timeline_index) {
    case tin_boss4a: DEF=0.5; break;
    case tin_boss4b: DEF=-0.05; break;
    case tin_boss4c: DEF=0.1; break;
    case tin_boss4d: DEF=-0.15; break;
}

