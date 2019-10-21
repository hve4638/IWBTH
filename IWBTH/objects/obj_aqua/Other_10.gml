if !instance_exists(obj_player) exit;

ARMOR=1;
xx=irandom_range(416+64+32,672);
yy=irandom_range(128,512-128);

nx_p=scp_pattern_rand(); //choose(tin_boss5_new1,tin_boss5_new2,tin_boss5_new3,tin_boss5_new4,tin_boss5_new5);
if nx_p==tin_boss5_new1 alarm[0]=10;
else alarm[0]=50;


