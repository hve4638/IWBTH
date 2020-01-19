enum DragunParts {
	head,
	body,
	wings,
	neck1,
	neck2,
	neck3,
	neck4,
	neck5,
	hand_l,
	hand_r,
	shoulder_l,
	shoulder_r,
	arm_l1,
	arm_l2,
	arm_l3,
	arm_l4,
	arm_l5,
	arm_r1,
	arm_r2,
	arm_r3,
	arm_r4,
	arm_r5,
	last
}

var map = ds_map_create();
map[? DragunParts.head] = instance_create_layer(x, y, L_BELOW, obj_dragun_head);
map[? DragunParts.body] = instance_create_layer(x, y, L_BELOW, obj_dragun_body);
map[? DragunParts.wings] = instance_create_layer(x, y, L_BELOW, obj_dragun_wing);
map[? DragunParts.neck1] = instance_create_layer(x, y, L_BELOW, obj_dragun_neck);
map[? DragunParts.neck2] = instance_create_layer(x, y, L_BELOW, obj_dragun_neck);
map[? DragunParts.neck3] = instance_create_layer(x, y, L_BELOW, obj_dragun_neck);
map[? DragunParts.neck4] = instance_create_layer(x, y, L_BELOW, obj_dragun_neck);
map[? DragunParts.neck5] = instance_create_layer(x, y, L_BELOW, obj_dragun_neck);
map[? DragunParts.hand_l] = instance_create_layer(x, y, L_BELOW, obj_dragun_hand);
map[? DragunParts.hand_r] = instance_create_layer(x, y, L_BELOW, obj_dragun_hand);
map[? DragunParts.shoulder_l] = instance_create_layer(x, y, L_BELOW, obj_dragun_shoulder);
map[? DragunParts.shoulder_r] = instance_create_layer(x, y, L_BELOW, obj_dragun_shoulder);
map[? DragunParts.arm_l1] = instance_create_layer(x, y, L_BELOW, obj_dragun_arm);
map[? DragunParts.arm_l2] = instance_create_layer(x, y, L_BELOW, obj_dragun_arm);
map[? DragunParts.arm_l3] = instance_create_layer(x, y, L_BELOW, obj_dragun_arm);
map[? DragunParts.arm_l4] = instance_create_layer(x, y, L_BELOW, obj_dragun_arm);
map[? DragunParts.arm_l5] = instance_create_layer(x, y, L_BELOW, obj_dragun_arm);
map[? DragunParts.arm_r1] = instance_create_layer(x, y, L_BELOW, obj_dragun_arm);
map[? DragunParts.arm_r2] = instance_create_layer(x, y, L_BELOW, obj_dragun_arm);
map[? DragunParts.arm_r3] = instance_create_layer(x, y, L_BELOW, obj_dragun_arm);
map[? DragunParts.arm_r4] = instance_create_layer(x, y, L_BELOW, obj_dragun_arm);
map[? DragunParts.arm_r5] = instance_create_layer(x, y, L_BELOW, obj_dragun_arm);

var d = layer_get_depth(L_PLAYER) + 10;
_setdepth(map[? DragunParts.head], d);
_setdepth(map[? DragunParts.hand_l], d + 1);
_setdepth(map[? DragunParts.hand_r], d + 1);

var d = layer_get_depth(L_BELOW);
_setdepth(map[? DragunParts.arm_l1], d);
_setdepth(map[? DragunParts.arm_r1], d++);

_setdepth(map[? DragunParts.arm_l2], d);
_setdepth(map[? DragunParts.arm_r2], d++);

_setdepth(map[? DragunParts.arm_l3], d);
_setdepth(map[? DragunParts.arm_r3], d++);

_setdepth(map[? DragunParts.arm_l4], d);
_setdepth(map[? DragunParts.arm_r4], d++);

_setdepth(map[? DragunParts.arm_l5], d);
_setdepth(map[? DragunParts.arm_r5], d++);

_setdepth(map[? DragunParts.shoulder_r], d);
_setdepth(map[? DragunParts.shoulder_l], d++);

_setdepth(map[? DragunParts.neck1], d++);
_setdepth(map[? DragunParts.neck2], d++);
_setdepth(map[? DragunParts.neck3], d++);
_setdepth(map[? DragunParts.neck4], d++);
_setdepth(map[? DragunParts.neck5], d++);
_setdepth(map[? DragunParts.body], d++);
_setdepth(map[? DragunParts.wings], d++);

map[? DragunParts.head].showalpha = 1.0;
map[? DragunParts.hand_l].showalpha = 1.0;
map[? DragunParts.hand_r].showalpha = 1.0;

map[? DragunParts.arm_l1].showalpha = 0.9;
map[? DragunParts.arm_r1].showalpha = 0.9;

map[? DragunParts.arm_l2].showalpha = 0.8;
map[? DragunParts.arm_r2].showalpha = 0.8;

map[? DragunParts.arm_l3].showalpha = 0.7;
map[? DragunParts.arm_r3].showalpha = 0.7;

map[? DragunParts.arm_l4].showalpha = 0.6;
map[? DragunParts.arm_r4].showalpha = 0.6;

map[? DragunParts.arm_l5].showalpha = 0.5;
map[? DragunParts.arm_r5].showalpha = 0.5;

map[? DragunParts.shoulder_r].showalpha = 0.5;
map[? DragunParts.shoulder_l].showalpha = 0.5;

map[? DragunParts.neck1].showalpha = 0.9;
map[? DragunParts.neck2].showalpha = 0.8;
map[? DragunParts.neck3].showalpha = 0.7;
map[? DragunParts.neck4].showalpha = 0.6;
map[? DragunParts.neck5].showalpha = 0.5;
map[? DragunParts.body].showalpha = 0.4;
map[? DragunParts.wings].showalpha = 0.3;

for(var i = 0; i < DragunParts.last; i++)
{
	var ins = map[? i];
	ins.image_xscale = image_xscale;
	ins.image_yscale = image_yscale;
}

return map;