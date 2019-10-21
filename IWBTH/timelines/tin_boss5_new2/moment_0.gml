t_x=Me.x+64;
t_y=Me.y;

t_i=instance_create(x,y,obj_aquasword);
with(t_i) {
    image_alpha=0;
    movalp=0.05;
    target=other.id
    image_angle=40;
    todir=40;
}
scp_shake(12,2,0);

