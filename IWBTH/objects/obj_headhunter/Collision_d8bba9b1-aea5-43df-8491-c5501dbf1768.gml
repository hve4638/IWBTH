if !onhealth
	exit;

hp -= other.damage;

instance_destroy(other);