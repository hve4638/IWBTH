///@param index
var idx = argument[0];

enum Particle {
	escape_ready,
	escape_try,
	escape_try2,
	escape_effect,
	blood,
	hd_boom,
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
		
		case Particle.escape_effect:
		{
			#region
				Sys[idx] = part_system_create();
				Part[idx] = part_type_create();
				part_system_depth(Sys[idx], -150);
				part_type_shape(Part[idx],pt_shape_sphere);
				part_type_size(Part[idx],0.05,0.24,0,0);
				part_type_scale(Part[idx],6,0.40);
				part_type_color1(Part[idx],16777215);
				part_type_alpha3(Part[idx],0.30,0.80,0.20);
				part_type_speed(Part[idx],0,0,0,0);
				part_type_direction(Part[idx],90,90,0,0);
				part_type_gravity(Part[idx],0.01,90);
				part_type_orientation(Part[idx],0,0,0,0,1);
				part_type_blend(Part[idx],1);
				part_type_life(Part[idx],20,50);
				Emit[idx] = part_emitter_create(Sys[idx]);
				Shape[idx] = 1;
				Dis[idx] = 0;
				//89~-89, 52~-52
			#endregion
		} break;
		
		case Particle.blood:
		{
			#region
			Sys[idx] = part_system_create();
			Part[idx] = part_type_create();
			part_system_depth(Sys[idx], -10000);
			part_type_shape(Part[idx],pt_shape_flare);
			part_type_size(Part[idx],0.15,0.20,0,0);
			part_type_scale(Part[idx],1.5,1.5);
			part_type_color1(Part[idx],255);
			part_type_alpha2(Part[idx],1,0);
			part_type_speed(Part[idx],3,3,0,0);
			part_type_direction(Part[idx],0,359,0,0);
			part_type_gravity(Part[idx],0.09,270);
			part_type_orientation(Part[idx],0,0,0,0,1);
			part_type_blend(Part[idx],0);
			part_type_life(Part[idx],10,20);
			Emit[idx] = part_emitter_create(Sys[idx]);
			Shape[idx] = 0;
			Dis[idx] = 1;
			//7~-7, 10~-10
			#endregion
		} break;
		
		case Particle.hd_boom:
			#region
			Sys[idx] = part_system_create();
			Part[idx] = part_type_create();
		    part_system_depth(Sys[idx],-30);
		    part_type_shape(Part[idx],pt_shape_sphere);
		    part_type_size(Part[idx],1,1,-0.01,0);
		    part_type_scale(Part[idx],1.20,1.20);
		    part_type_color3(Part[idx],8454143,255,255);
		    part_type_alpha3(Part[idx],0.70,0.20,0);
		    part_type_speed(Part[idx],5.80,6,-0.20,0);
		    part_type_direction(Part[idx],0,359,0,0);
		    part_type_orientation(Part[idx],0,0,0,0,1);
		    part_type_blend(Part[idx],1);
		    part_type_life(Part[idx],40,40);
		    Emit[idx] = part_emitter_create(Sys[idx]);
			Shape[idx] = 1;
			Dis[idx] = 0;
			/*part_emitter_region(Sys[32],emitter[32],-16,16,14,-14,1,0);
			part_emitter_stream(Sys[32],emitter[32],particle[32],5);*/
			#endregion
		break;
		default:
			isdeclare[idx] = false;
	}


}