///@desc data
var data = argument[0];

if instance_exists(data)
	return data.id;
else
	return instance_create(0, 0, data);