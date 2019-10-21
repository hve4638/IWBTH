for(i=0;i<800;i+=32) {
    instance_create(i,Me.y div 32 * 32,obj_dimensionwarning);
}

for(i=0;i<608;i+=32) {
    instance_create(Me.x div 32 * 32,i,obj_dimensionwarning);
}

