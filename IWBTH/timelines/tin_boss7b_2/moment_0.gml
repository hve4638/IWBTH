fade_get=0.05;
ARMOR=0.5;

p_i=0; p_j=0;
event_user(1);

var t=choose(243413,133412,123423,231323,341224,242312,341413,132414,122312,243413); //121424
ds_tmp=ds_list_create();

repeat(6) {
    ds_list_add(ds_tmp,t mod 10);
    t=t div 10;
}

