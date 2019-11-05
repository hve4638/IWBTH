///@param index
///@param x1
///@param y1
///@param x2
///@param y2
///@param number
///@param shape
///@param distribution

if !instance_exists(sys_particle)
	return -1;

var idx, x1, x2, y1, y2, num, shape, dis;
idx = argument[0];
x1 = argument[1];
y1 = argument[2];
x2 = argument[3];
y2 = argument[4];
num = argument[5];
shape = argument_count > 6 ? argument[6] : Shape[Particle.escape_ready];
dis = argument_count > 7 ? argument[7] : Dis[Particle.escape_ready];

part_emitter_region(Sys[idx],Emit[idx],38,-38,4,-4,shape,dis);
part_emitter_burst(Sys[idx],Emit[idx],Part[Particle.escape_ready],num);

return 0;