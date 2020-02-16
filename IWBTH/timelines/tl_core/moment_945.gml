///@desc 

var ins = instance_create_layer(room_width div 2, room_height, L_ABOVE, obj_jsabboom);
with(ins)
{
	life_create(40);
	onboom = false;
	radius_max = 24;
	on_to = true;
	tox = room_width div 2;
	toy = room_height div 2;
	tospd = 9;
}