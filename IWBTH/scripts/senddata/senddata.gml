///@argu key
///@argu value
///@argu notice*
var k, v, q;
k = string(argument[0]);
v = argument[1];
q = argument_count > 2 ? argument[2] : no;

global.datainput[? k] = v;

cout("Senddata(" + string(k) + "): ", v);

if !isno(q)
	ds_queue_enqueue(q, k);