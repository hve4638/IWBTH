var tj=choose(0,32);
for(i=0;i<608;i+=32) {
    for(j=tj;j<800;j+=64) {    
        instance_create(j,i,obj_dimensionwarning);
    }
}

