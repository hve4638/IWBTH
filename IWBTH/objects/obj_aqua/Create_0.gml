maxhp = 200;
hp = maxhp;
drawhp = 0;

onhealth = true;

tl_on = array_create(15, false);
tl_idx = array_create(15, 0);
time_idx = 0;

image_alpha = 0.75;

instance_create_layer(0, 0, L_SYS, sys_dc_aqua);