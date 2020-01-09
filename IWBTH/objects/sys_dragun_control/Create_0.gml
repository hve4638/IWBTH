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
_setdepth(arr[DragunParts.shoulder_r], d++);
_setdepth(arr[DragunParts.shoulder_l], d++); 
_setdepth(arr[DragunParts.neck1], d++);
_setdepth(arr[DragunParts.neck2], d++);
_setdepth(arr[DragunParts.neck3], d++);
_setdepth(arr[DragunParts.neck4], d++);
_setdepth(arr[DragunParts.neck5], d++);
_setdepth(arr[DragunParts.body], d++);
_setdepth(arr[DragunParts.wings], d++);

mx = mouse_x;
my = mouse_y;
mainx = obj_dragun_body.x;
mainy = obj_dragun_body.y;

arr_lore[DragunParts.head] = "head";
arr_lore[DragunParts.body] = "body (main)";
arr_lore[DragunParts.wings] = "wing";
arr_lore[DragunParts.neck1] = "neck1";
arr_lore[DragunParts.neck2] = "neck2";
arr_lore[DragunParts.neck3] = "neck3";
arr_lore[DragunParts.neck4] = "neck4";
arr_lore[DragunParts.neck5] = "neck5";
arr_lore[DragunParts.hand_l] = "hand left";
arr_lore[DragunParts.hand_r] = "hand right";
arr_lore[DragunParts.shoulder_l] = "shoulder left";
arr_lore[DragunParts.shoulder_r] = "shoulder right";
arr_lore[DragunParts.arm_l1] = "arm left1";
arr_lore[DragunParts.arm_l2] = "arm left2";
arr_lore[DragunParts.arm_l3] = "arm left3";
arr_lore[DragunParts.arm_l4] = "arm left4";
arr_lore[DragunParts.arm_l5] = "arm left5";
arr_lore[DragunParts.arm_r1] = "arm right1";
arr_lore[DragunParts.arm_r2] = "arm right2";
arr_lore[DragunParts.arm_r3] = "arm right3";
arr_lore[DragunParts.arm_r4] = "arm right4";
arr_lore[DragunParts.arm_r5] = "arm right5";
//arrstr[DragunParts.arm_l1] = "arms1";

for(var i = 0; i < DragunParts.last; i++)
{
	arr_ins[i] = instance_create_layer(8, 32 + i * 24, L_SYS, obj_editorbutton);
	with(arr_ins[i])
	{
		image_xscale = 4;
		image_yscale = 0.5;
		lorescale = 0.7;
		sendto = sys_dragun_control;
		sendidx = 5;
		num = i;
		
		lore = other.arr_lore[i];
		lore2 = lore;
	}
}