///@param index
var idx = argument[0];

with(sys_particle)
{
	if isdeclare[idx]
		break;
	isdeclare[idx] = true;

	switch(idx)
	{
		case Particle.escape_ready:
		{
			#region
			Part[Particle.escape_ready] = part_type_create();
			part_type_shape(Part[Particle.escape_ready],pt_shape_sphere);
			part_type_size(Part[Particle.escape_ready],0.10,0.10,0,0);
			part_type_scale(Part[Particle.escape_ready],2,2);
			part_type_color1(Part[Particle.escape_ready],15263976);
			part_type_alpha3(Part[Particle.escape_ready],0.40,0.75,0);
			part_type_speed(Part[Particle.escape_ready],0.10,0.40,0,0);
			part_type_direction(Part[Particle.escape_ready],0,359,0,0);
			part_type_gravity(Part[Particle.escape_ready],0.05,90);
			part_type_orientation(Part[Particle.escape_ready],0,0,0,0,1);
			part_type_blend(Part[Particle.escape_ready],1);
			part_type_life(Part[Particle.escape_ready],25,50);
			Emit[Particle.escape_ready] = part_emitter_create(Sys[Particle.escape_ready]);
			Shape[Particle.escape_ready] = 1;
			Dis[Particle.escape_ready] = 1;
			//-38~38, -4~4
			//part_emitter_region(Sys[Particle.escape_ready],Emit[Particle.escape_ready],38,-38,4,-4,1,1);
			//part_emitter_burst(Sys[Particle.escape_ready],Emit[Particle.escape_ready],Part[Particle.escape_ready],1);
			#endregion
		}	break;
	}


}