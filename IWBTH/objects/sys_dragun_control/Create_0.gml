ondrag = false;
oncancel = false;
num_p = 0;
num = 0;
gridint = 1;
receiveidx = 0;
receiveby = noone;
receiveidx_r = 0;
receiveby_r = noone;

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
		on_right = true;
	}
}

receivemap = 0;
map_cnt = 0;
map_arr = 0;
current_num = 0;
scr_dctrl_madd();



var map = json_decode("{ \"2\": { \"img\": 130.000000, \"xscale\": 1.000000, \"x\": 0.000000, \"depth\": 268.000000, \"subimg\": 0.000000, \"yscale\": 1.000000, \"y\": -35.000000 }, \"3\": { \"img\": 126.000000, \"xscale\": 1.000000, \"x\": 0.000000, \"depth\": 262.000000, \"subimg\": 0.000000, \"yscale\": 1.000000, \"y\": -144.000000 }, \"1\": { \"img\": 118.000000, \"xscale\": 1.000000, \"x\": 0.000000, \"depth\": 267.000000, \"subimg\": 2.000000, \"yscale\": 1.000000, \"y\": 0.000000 }, \"11\": { \"img\": 127.000000, \"xscale\": 1.000000, \"x\": 34.000000, \"depth\": 260.000000, \"subimg\": 0.000000, \"yscale\": 1.000000, \"y\": -38.000000 }, \"9\": { \"img\": 120.000000, \"xscale\": 1.000000, \"x\": 78.000000, \"depth\": 2.000000, \"subimg\": 0.000000, \"yscale\": 1.000000, \"y\": 2.000000 }, \"15\": { \"img\": 128.000000, \"xscale\": 1.000000, \"x\": -42.000000, \"depth\": 253.000000, \"subimg\": 0.000000, \"yscale\": 1.000000, \"y\": -9.000000 }, \"13\": { \"img\": 128.000000, \"xscale\": 1.000000, \"x\": -56.000000, \"depth\": 251.000000, \"subimg\": 0.000000, \"yscale\": 1.000000, \"y\": 4.000000 }, \"19\": { \"img\": 128.000000, \"xscale\": -1.000000, \"x\": 49.000000, \"depth\": 257.000000, \"subimg\": 0.000000, \"yscale\": 1.000000, \"y\": 1.000000 }, \"5\": { \"img\": 125.000000, \"xscale\": 1.000000, \"x\": 0.000000, \"depth\": 264.000000, \"subimg\": 0.000000, \"yscale\": 1.000000, \"y\": -131.000000 }, \"4\": { \"img\": 126.000000, \"xscale\": 1.000000, \"x\": 0.000000, \"depth\": 263.000000, \"subimg\": 0.000000, \"yscale\": 1.000000, \"y\": -162.000000 }, \"7\": { \"img\": 125.000000, \"xscale\": 1.000000, \"x\": 0.000000, \"depth\": 266.000000, \"subimg\": 0.000000, \"yscale\": 1.000000, \"y\": -79.000000 }, \"6\": { \"img\": 125.000000, \"xscale\": 1.000000, \"x\": 0.000000, \"depth\": 265.000000, \"subimg\": 0.000000, \"yscale\": 1.000000, \"y\": -107.000000 }, \"mainy\": 445.000000, \"18\": { \"img\": 128.000000, \"xscale\": -1.000000, \"x\": 56.000000, \"depth\": 256.000000, \"subimg\": 0.000000, \"yscale\": 1.000000, \"y\": 4.000000 }, \"0\": { \"img\": 122.000000, \"xscale\": 1.000000, \"x\": 0.000000, \"depth\": 0.000000, \"subimg\": 1.000000, \"yscale\": 1.000000, \"y\": -108.000000 }, \"10\": { \"img\": 127.000000, \"xscale\": -1.000000, \"x\": -34.000000, \"depth\": 261.000000, \"subimg\": 0.000000, \"yscale\": 1.000000, \"y\": -38.000000 }, \"8\": { \"img\": 120.000000, \"xscale\": -1.000000, \"x\": -78.000000, \"depth\": 1.000000, \"subimg\": 0.000000, \"yscale\": 1.000000, \"y\": 2.000000 }, \"14\": { \"img\": 128.000000, \"xscale\": 1.000000, \"x\": -49.000000, \"depth\": 252.000000, \"subimg\": 0.000000, \"yscale\": 1.000000, \"y\": 1.000000 }, \"12\": { \"img\": 128.000000, \"xscale\": 1.000000, \"x\": -67.000000, \"depth\": 250.000000, \"subimg\": 0.000000, \"yscale\": 1.000000, \"y\": -1.000000 }, \"21\": { \"img\": 128.000000, \"xscale\": -1.000000, \"x\": 38.000000, \"depth\": 259.000000, \"subimg\": 0.000000, \"yscale\": 1.000000, \"y\": -22.000000 }, \"17\": { \"img\": 128.000000, \"xscale\": -1.000000, \"x\": 66.000000, \"depth\": 255.000000, \"subimg\": 0.000000, \"yscale\": 1.000000, \"y\": -1.000000 }, \"mainx\": 544.000000, \"20\": { \"img\": 128.000000, \"xscale\": -1.000000, \"x\": 42.000000, \"depth\": 258.000000, \"subimg\": 0.000000, \"yscale\": 1.000000, \"y\": -9.000000 }, \"16\": { \"img\": 128.000000, \"xscale\": 1.000000, \"x\": -38.000000, \"depth\": 254.000000, \"subimg\": 0.000000, \"yscale\": 1.000000, \"y\": -23.000000 } }");

for(var i = 0; i < DragunParts.last; i++)
{
	if !ds_map_exists(map, string(i))
		continue;

	//cout_show(get_map_keylist(map[? string(i)]));
	var ins = arr[i];
	var m = map[? string(i)];
	ins.setx = m[? "x"];
	ins.sety = m[? "y"];
	//ins.sprite_index = m[? "img"];
	ins.image_index = m[? "subimg"];
	ins.image_xscale = m[? "xscale"];
	ins.image_yscale = m[? "yscale"];
}
mainx = map[? "mainx"];
mainy = map[? "mainy"];

ds_map_destroy(map);

var ins = arr[DragunParts.body];
ins.setx = 0;
ins.sety = 0;

mainx = 560;
mainy = 445;