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

ondrag = false;
oncancel = false;
num_p = 0;
num = 0;
gridint = 1;
receiveidx = 0;
receiveby = noone;
arr[DragunParts.head] = instance_create_layer(x, y, L_BELOW, obj_dragun_head);
arr[DragunParts.body] = instance_create_layer(x, y, L_BELOW, obj_dragun_body);
arr[DragunParts.wings] = instance_create_layer(x, y, L_BELOW, obj_dragun_wing);
arr[DragunParts.neck1] = instance_create_layer(x, y, L_BELOW, obj_dragun_neck);
arr[DragunParts.neck2] = instance_create_layer(x, y, L_BELOW, obj_dragun_neck);
arr[DragunParts.neck3] = instance_create_layer(x, y, L_BELOW, obj_dragun_neck);
arr[DragunParts.neck4] = instance_create_layer(x, y, L_BELOW, obj_dragun_neck);
arr[DragunParts.neck5] = instance_create_layer(x, y, L_BELOW, obj_dragun_neck);
arr[DragunParts.hand_l] = instance_create_layer(x, y, L_BELOW, obj_dragun_hand);
arr[DragunParts.hand_r] = instance_create_layer(x, y, L_BELOW, obj_dragun_hand);
arr[DragunParts.shoulder_l] = instance_create_layer(x, y, L_BELOW, obj_dragun_shoulder);
arr[DragunParts.shoulder_r] = instance_create_layer(x, y, L_BELOW, obj_dragun_shoulder);
arr[DragunParts.arm_l1] = instance_create_layer(x, y, L_BELOW, obj_dragun_arm);
arr[DragunParts.arm_l2] = instance_create_layer(x, y, L_BELOW, obj_dragun_arm);
arr[DragunParts.arm_l3] = instance_create_layer(x, y, L_BELOW, obj_dragun_arm);
arr[DragunParts.arm_l4] = instance_create_layer(x, y, L_BELOW, obj_dragun_arm);
arr[DragunParts.arm_l5] = instance_create_layer(x, y, L_BELOW, obj_dragun_arm);
arr[DragunParts.arm_r1] = instance_create_layer(x, y, L_BELOW, obj_dragun_arm);
arr[DragunParts.arm_r2] = instance_create_layer(x, y, L_BELOW, obj_dragun_arm);
arr[DragunParts.arm_r3] = instance_create_layer(x, y, L_BELOW, obj_dragun_arm);
arr[DragunParts.arm_r4] = instance_create_layer(x, y, L_BELOW, obj_dragun_arm);
arr[DragunParts.arm_r5] = instance_create_layer(x, y, L_BELOW, obj_dragun_arm);

var d = layer_get_depth(L_PLAYER);
_setdepth(arr[DragunParts.head], d++);
_setdepth(arr[DragunParts.hand_l], d++);
_setdepth(arr[DragunParts.hand_r], d++);


var d = layer_get_depth(L_BELOW);
_setdepth(arr[DragunParts.shoulder_r], d++);
_setdepth(arr[DragunParts.shoulder_l], d++);
_setdepth(arr[DragunParts.arm_l1], d++);
_setdepth(arr[DragunParts.arm_l2], d++);
_setdepth(arr[DragunParts.arm_l3], d++);
_setdepth(arr[DragunParts.arm_l4], d++);
_setdepth(arr[DragunParts.arm_l5], d++);
_setdepth(arr[DragunParts.arm_r1], d++);
_setdepth(arr[DragunParts.arm_r2], d++);
_setdepth(arr[DragunParts.arm_r3], d++);
_setdepth(arr[DragunParts.arm_r4], d++);
_setdepth(arr[DragunParts.arm_r5], d++);
_setdepth(arr[DragunParts.neck1], d++);
_setdepth(arr[DragunParts.neck2], d++);
_setdepth(arr[DragunParts.neck3], d++);
_setdepth(arr[DragunParts.neck4], d++);
_setdepth(arr[DragunParts.neck5], d++);
_setdepth(arr[DragunParts.body], d++);
_setdepth(arr[DragunParts.wings], d++);

mx = mouse_x;
my = mouse_y;