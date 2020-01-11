///@argu data
var data = argument[0];
var ins;

if instance_exists(data)
	ins = data.id;
else
	ins = instance_create(0, 0, data);

with(ins)
{
	toid = other.id;
	event_user(0);
}
return ins;