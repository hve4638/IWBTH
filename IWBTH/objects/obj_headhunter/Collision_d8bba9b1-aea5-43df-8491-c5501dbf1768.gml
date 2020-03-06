if !onhealth || onrolling
	exit;

hp -= other.damage;

instance_destroy(other);