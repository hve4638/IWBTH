var tj=choose(0,32);
for(i=0;i<608;i+=32) {
    for(j=tj;j<800;j+=64) {
        instance_create(j,i,obj_dimensionwarning);
    }
}

for(i=32*19;0<=i;i-=32*3) {
    for(j=0;j<=800;j+=32) {
        instance_create(j,i,obj_dimensionwarning);
    }    
}

