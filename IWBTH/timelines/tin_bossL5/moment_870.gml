var t=choose(-32,0);
for(i=t;i<800;i+=64) {
    for(j=0;j<608;j+=64) {
        instance_create(i,j,obj_dimensionwarning);
        instance_create(i+32,j+32,obj_dimensionwarning);
    }
}

t_i=0;

