///@argu time
///@argu script
///@argu argument*
///@argu persistent*
var t, s, a, p;
t = argument[0];
s = argument[1];
a = argument_count > 2 ? argument[2] : undefined;
p = argument_count > 3 ? argument[3] : true;

var ins = instance_create_layer(0, 0, L_TRIG, obj_trigger_duration);
with(ins)
{
	trig = s;
	argu = a;
	onargu = (argu != undefined);
	
	alarm[0] = t;
	persistent = p;
}