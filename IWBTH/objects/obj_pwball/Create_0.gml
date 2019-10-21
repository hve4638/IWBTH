nm=-1;
on=true;

xmov=0;
ymov=0;
image_speed=0;

///echo
aftx=ds_list_create();
afty=ds_list_create();

for(var i=0;i<4;i++) {
    ds_list_add(aftx,-999);
    ds_list_add(afty,-999);
}

