if ds_map_exists(dealspr, sprite_index)
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

if onhealth
{
	var add = (hp - drawhp);
	drawhp += add / 10;
	
	bossbar(drawhp/maxhp);
}

if onlook
	image_xscale = (x != Player.x) ? sign(Player.x - x) : image_xscale;