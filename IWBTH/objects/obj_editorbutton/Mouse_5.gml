if !on_right
	exit;

with(sendto)
{
	event_user(0);
	receiveidx_r = other.sendidx;
	receiveby_r = other.id;
}