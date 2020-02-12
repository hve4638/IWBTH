///@desc piston
var t = (1500 - 1465);
var s = 0.11 * room_height;
var l = room_width;

var ins = jsab_laser(room_width, s, 180, t, 50);

with(ins)
{
	life_create(60);
	alphap = 0.1;
	alphato = 0.3;
	alphawave = 0.03;
	
	ins_life = 30;
	ins_createtime = 5;
	ins_destroytime = 5;
	ins_createtype = JsabCreate.piston;
	ins_destroytype = JsabDestroy.piston;
	thick = s / 16;
	length = l;
}

var ins = jsab_laser(0, room_height - s, 0, t, 50);
with(ins)
{
	life_create(60);
	alphap = 0.1;
	alphato = 0.3;
	alphawave = 0.03;
	
	ins_life = 30;
	ins_createtime = 5;
	ins_destroytime = 5;
	ins_createtype = JsabCreate.piston;
	ins_destroytype = JsabDestroy.piston;
	thick = s / 16;
	length = l;
}