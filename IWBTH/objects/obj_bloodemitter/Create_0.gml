///Must Create by precreate()
life_create(15);

var spd, dir;
spd = blood_spd;
dir = blood_dir;

particle_declare(Particle.blood);

if 0 < spd
	with(sys_particle)
	{
		part_type_speed(Part[Particle.blood], spd * 0.25, spd * 0.75, 0, 0);
		part_type_direction(Part[Particle.blood], dir - 15, dir + 15, 0, 0);
	}