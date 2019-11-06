///@param index
var idx = argument[0];

enum Particle {
	escape_ready,
	escape_try,
	escape_try2,
	test,
	eoa
}

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
				Sys[idx] = part_system_create();
				Part[idx] = part_type_create();
				part_system_depth(Sys[idx], -100);
				part_type_shape(Part[idx],pt_shape_sphere);
				part_type_size(Part[idx],0.1,0.1,0,0);
				part_type_scale(Part[idx],1.3,1.3);
				part_type_color1(Part[idx],15263976);
				part_type_alpha3(Part[idx],0.40,0.6,0);
				part_type_speed(Part[idx],0.10,0.40,0,0);
				part_type_direction(Part[idx],0,359,0,0);
				part_type_gravity(Part[idx],0.05,90);
				part_type_orientation(Part[idx],0,0,0,0,1);
				part_type_blend(Part[idx],1);
				part_type_life(Part[idx],25,50);
				Emit[idx] = part_emitter_create(Sys[idx]);
				Shape[idx] = 1;
				Dis[idx] = 1;
				//-38~38, -4~4
			#endregion
		}	break;
		
		
		case Particle.escape_try:
		{
			#region
			Sys[idx] = part_system_create();
			Part[idx] = part_type_create();
			part_system_depth(Sys[idx], 50);
			part_type_shape(Part[idx],pt_shape_sphere);
			part_type_size(Part[idx],0.10,0.10,0,0);
			part_type_scale(Part[idx],2,2);
			part_type_color1(Part[idx],15263976);
			part_type_alpha2(Part[idx],1,0);
			part_type_speed(Part[idx],0.10,0.30,0,0);
			part_type_direction(Part[idx],0,359,0,0);
			part_type_gravity(Part[idx],0.10,90);
			part_type_orientation(Part[idx],0,0,0,0,1);
			part_type_blend(Part[idx],1);
			part_type_life(Part[idx],30,50);
			Emit[idx] = part_emitter_create(Sys[idx]);
			Shape[idx] = 1;
			Dis[idx] = 1;
			//35~-35, 2~-2
			#endregion
		} break;
		
		case Particle.escape_try2:
		{
			#region
			Sys[idx] = part_system_create();
			Part[idx] = part_type_create();
			part_system_depth(Sys[idx], -50);
			part_type_shape(Part[idx],pt_shape_sphere);
			part_type_size(Part[idx],0.10,0.10,0,0);
			part_type_scale(Part[idx],2,2);
			part_type_color1(Part[idx],15263976);
			part_type_alpha2(Part[idx],1,0);
			part_type_speed(Part[idx],0.10,0.30,0,0);
			part_type_direction(Part[idx],0,359,0,0);
			part_type_gravity(Part[idx],0.10,90);
			part_type_orientation(Part[idx],0,0,0,0,1);
			part_type_blend(Part[idx],1);
			part_type_life(Part[idx],30,50);
			Emit[idx] = part_emitter_create(Sys[idx]);
			Shape[idx] = 1;
			Dis[idx] = 1;
			//35~-35, 2~-2
			#endregion
		} break;
		
		default:
			isdeclare[idx] = false;
	}


}