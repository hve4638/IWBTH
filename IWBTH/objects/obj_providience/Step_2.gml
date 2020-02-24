if state == StateP.attack && onattack && ds_map_exists(dealspr, sprite_index)
{
	if !instance_exists(damage_ins)
		damage_ins = instance_create(0, 0, obj_damagebox);
	//damage_ins.visible = true;
	damage_ins.x = x;
	damage_ins.y = y;
	damage_ins.sprite_index = dealspr[? sprite_index];
	damage_ins.image_index = image_index;
	damage_ins.image_xscale = image_xscale;
	damage_ins.image_yscale = image_yscale;
}
else
{
	if instance_exists(damage_ins)
		instance_destroy(damage_ins);
}

var s = (state == StateP.idle) + (state == StateP.walk || state == StateP.dash) * 2;

if s == 1 || (0 < s && hspd == 0)
	sprite_index = spr_providience_idle;
else if hspd != 0 && 1 < s
{
	if state == StateP.walk
		sprite_index = spr_providience_walk;
	if state == StateP.dash
		sprite_index = spr_providience_dash;
}

if hspd == 0 && s == 2
{
	state = StateP.idle;

	scr_providience_next();
}

if pdis(Player.x - x, 0) < 200
{
	if 0 <away_time
		away_time--;
}
else if pdis(Player.x - x, 0) > 400
	away_time ++;
else
	away_time += 2;

if onhealth
{
	var add = (hp - drawhp);
	drawhp += add / 10;
	
	bossbar(drawhp/maxhp);
}

if onlook
	image_xscale = (x != Player.x) ? sign(Player.x - x) : image_xscale;


hspd = 0;