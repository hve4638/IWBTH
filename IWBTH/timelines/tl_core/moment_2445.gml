///@desc core
var xx = room_width div 2;
var yy = room_height div 2;
var d = 0;

var ins = jsab_block(xx, yy, 100, 10000);
with(ins)
{
	thick = 4.5;
	length = 4.5;
	type = 1;
	ins_whitetime = 10;
	ins_destroytype = JsabDestroy.smaller;
	
	image_angle += d;
	ins_createtype = JsabCreate.instant;
}

ins = jsab_laser(xx, yy, 0, 100, 10000);
with(ins)
{
	thick = 0.9;	
	length = 1000;
	type = 1;
	ins_whitetime = 10;
	ins_destroytype = JsabDestroy.laser;
	
	image_angle += d;
}
ins = jsab_laser(xx, yy, 180, 100, 10000);
with(ins)
{
	thick = 0.9;	
	length = 1000;
	type = 1;
	ins_whitetime = 10;
	ins_destroytype = JsabDestroy.laser;
	
	image_angle += d;
}