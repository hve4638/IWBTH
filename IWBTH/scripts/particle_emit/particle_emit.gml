///@param index
///@param x1
///@param x2
///@param y1
///@param y2
///@param number
///@param shape*
///@param distribution*

with(sys_particle)
{
	var idx, x1, x2, y1, y2, num, shape, dis;
	idx = argument[0];
	x1 = argument[1];
	x2 = argument[2];
	y1 = argument[3];
	y2 = argument[4];
	num = argument[5];
	shape = argument_count > 6 ? argument[6] : Shape[idx];
	dis = argument_count > 7 ? argument[7] : Dis[idx];
	
	if isno(shape) shape = Shape[idx];
	if isno(dis) dis = Dis[idx];
	if !isdeclare[idx]
		particle_declare(idx);
	
	part_emitter_region(Sys[idx],Emit[idx],x1,x2,y1,y2,shape,dis);
	part_emitter_burst(Sys[idx],Emit[idx],Part[idx],num);

	return 0;
}