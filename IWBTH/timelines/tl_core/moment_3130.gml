///@desc piston
var t = (1500 - 1465);
var s = 0.11 * room_height;
var l = room_height;

var ins = jsab_laser(s, room_height, 90, t, 50);

with(ins)
{
	life_create(60);
	alphap = 0.1;
	alphato = 0.3;
	alphawave = 0.03;
	
	ins_life = 20;
	ins_createtime = 3;
	ins_destroytime = 5;
	ins_createtype = JsabCreate.piston;
	ins_destroytype = JsabDestroy.piston;
	thick = s / 16;
	length = l;
}

var ins = jsab_laser(room_width - s, 0, -90, t, 50);
with(ins)
{
	life_create(60 + 15);
	alphap = 0.1;
	alphato = 0.3;
	alphawave = 0.03;
	
	ins_life = 20;
	ins_createtime = 3;
	ins_destroytime = 5;
	ins_createtype = JsabCreate.piston;
	ins_destroytype = JsabDestroy.piston;
	thick = s / 16;
	length = l;
}