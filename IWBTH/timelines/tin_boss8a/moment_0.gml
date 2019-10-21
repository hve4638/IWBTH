plat_part = true;
platmin = x-10;
platmax = x+10;

t_i = 0;
t_j = 0;
t_k = 0;

i = instance_create(x-(577-576),y-(409-399),obj_scythe);
with(i) {
    image_alpha=0.2;
    image_angle=135+35;
    alpha=0.2; angle=-8;
    OnAfter=1;
}

