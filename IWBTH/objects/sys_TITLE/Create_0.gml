image_alpha=0;
to_alpha=0.9;
I=0;

ON=0;
select[0]=0;
select[1]=0;
select[2]=0;
select[3]=0;
setselect=0;
setconfig=0;

ds_tmp=ds_list_create();
ds_tmp2=ds_map_create();

scp_localload();
scp_publicload();
for(i=1;i<=3;i++) {
    ds_map_clear(ds_tmp2);
    ds_map_read(ds_tmp2,sys_global.ldata[i]);
    if scp_issave_correct(ds_tmp2) {
        issave[i]=true;

        if ds_tmp2[? "wuss"] s_dif[i]=1;
        else s_dif[i]=0;
        //show_message("n" + string(i));
        s_room[i]=asset_get_index(ds_tmp2[? "room"]);
        
        
        ds_list_clear(ds_tmp);
        ds_list_read(ds_tmp,sys_global.pdata[i]);
        s_time[i]=real(ds_list_find_value(ds_tmp,0));
        s_death[i]=real(ds_list_find_value(ds_tmp,1));
    } else {
        issave[i]=false;
    }
}

///Particle
Sys= part_system_create();
particle = part_type_create();
part_type_shape(particle,pt_shape_flare);
part_type_size(particle,0.10,0.10,0.01,0);
part_type_scale(particle,4,4);
part_type_color1(particle,5263440);
part_type_alpha3(particle,0.10,0.01,0);
part_type_speed(particle,0.3,1,0,0);
part_type_direction(particle,45,135,0,0);
part_type_gravity(particle,0,270);
part_type_orientation(particle,0,0,0,0,1);
part_type_blend(particle,0);
part_type_life(particle,30,300);
emitter = part_emitter_create(Sys);

part_emitter_region(Sys,emitter,0,800,606,610,0,0);
part_emitter_stream(Sys,emitter,particle,1);

