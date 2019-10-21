if !instance_exists(obj_player) exit;

image_alpha=0.5;
OnAfter=0;

if random(1)<0.2 scp_timeline(tin_boss2c);
else scp_timeline(choose(tin_boss2a,tin_boss2b));

