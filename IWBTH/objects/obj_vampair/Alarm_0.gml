/// @description Pattern
if !instance_exists(obj_player) exit;
if nx_p==tin_boss7_last1
||nx_p==tin_boss7_last2
||nx_p==tin_boss7_last3
||nx_p==tin_boss7_last4
    scp_timeline(tin_boss7_lastready);
else if nx_p!=noone scp_timeline(nx_p);
current_pattern=nx_p;
//scp_timeline(tin_boss7_last3);

