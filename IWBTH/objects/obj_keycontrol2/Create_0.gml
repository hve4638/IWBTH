On=1;
lim=50;

with(sys_cam) {fade_get=0.01; fade_col=c_black;}

image_xscale=3;
image_yscale=3;
image_alpha=0;
t=0;

/*
globalvar leftbutton, rightbutton, downbutton, shotbutton, jumpbutton, restartbutton;

/* */
///Keyset
d_t=ds_list_create();


var i, nm;
i=24; nm=4;
repeat(i) {
    ds_list_add(d_t,irandom_range(1,nm));
}

/* */
/*  */
