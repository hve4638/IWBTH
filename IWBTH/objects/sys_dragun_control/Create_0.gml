controllist = ds_list_create();
num = 0;

ds_list_add(controllist, instance_create_layer(x, y, L_BELOW, obj_dragun_head));
repeat(2) ds_list_add(controllist, instance_create_layer(x, y, L_BELOW, obj_dragun_hand));
ds_list_add(controllist, instance_create_layer(x, y, L_BELOW, obj_dragun_neck));
repeat(2) ds_list_add(controllist, instance_create_layer(x, y, L_BELOW, obj_dragun_shoulder));
repeat(5) ds_list_add(controllist, instance_create_layer(x, y, L_BELOW, obj_dragun_neck));
repeat(10) ds_list_add(controllist, instance_create_layer(x, y, L_BELOW, obj_dragun_arm));
ds_list_add(controllist, instance_create_layer(x, y, L_BELOW, obj_dragun_body));
ds_list_add(controllist, instance_create_layer(x, y, L_BELOW, obj_dragun_wing));


mx = mouse_x;
my = mouse_y;