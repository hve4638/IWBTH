/// @description Reina Pattern
var j=32;
for(var i=0;i<4;i++) {
    t_arr[i]=instance_create(400,-j-32,obj_whitechunk);
    with(t_arr[i]) {direction=270; movspd=1; movang=16;}
    j+=6;
}

