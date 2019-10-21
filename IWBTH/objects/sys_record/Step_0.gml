if keyboard_check_pressed(ord("P")) REC=!REC;
if keyboard_check_pressed(48) event_user(0);
if keyboard_check_pressed(49) {
    var str="";
    str+=ds_list_write(ds_x)+"#";
    str+=ds_list_write(ds_y)+"#";
    str+=ds_list_write(ds_rm)+"#";
    str+=ds_list_write(ds_spr)+"#";
    str+=ds_list_write(ds_idx)+"#";
    str+=ds_list_write(ds_xs)+"#";
    str+=ds_list_write(ds_ys)+"#";
    str+=ds_list_write(ds_st)+"#";
    clipboard_set_text(str);
    show_message("Record save!");
}

if keyboard_check_pressed(50) {
    var str=clipboard_get_text();
    if string_count("#",str)==8 {
        var i, j;
        for(i=0;i<8;i++) {
            j=string_pos("#",str);
            a[i]=string_copy(str,1,j-1);
            str=string_delete(str,1,j);
        }
        event_user(0);
        ds_list_read(ds_x,a[0]);
        ds_list_read(ds_y,a[1]);
        ds_list_read(ds_rm,a[2]);
        ds_list_read(ds_spr,a[3]);
        ds_list_read(ds_idx,a[4]);
        ds_list_read(ds_xs,a[5]);
        ds_list_read(ds_ys,a[6]);
        ds_list_read(ds_st,a[7]);
        
        a=0;
        show_message("Record load!");
    }
}

if keyboard_check_pressed(51) {
    var i=instance_create(0,0,obj_replay);
    ds_list_copy(i.ds_x,ds_x);
    ds_list_copy(i.ds_y,ds_y);
    ds_list_copy(i.ds_rm,ds_rm);
    ds_list_copy(i.ds_spr,ds_spr);
    ds_list_copy(i.ds_idx,ds_idx);
    ds_list_copy(i.ds_xs,ds_xs);
    ds_list_copy(i.ds_ys,ds_ys);
    ds_list_copy(i.ds_st,ds_st);
}

if keyboard_check_pressed(52) with(obj_replay) instance_destroy();



if REC {
    if instance_exists(obj_player) {
        ds_list_add(ds_x,obj_player.x);
        ds_list_add(ds_y,obj_player.y);
        ds_list_add(ds_rm,room);
        ds_list_add(ds_spr,obj_player.sprite_index);
        ds_list_add(ds_idx,obj_player.image_index);
        ds_list_add(ds_xs,obj_player.xScale);
        ds_list_add(ds_ys,obj_player.image_yscale);
        ds_list_add(ds_st,1);
    } else if instance_exists(Me) {
        ds_list_add(ds_x,Me.x);
        ds_list_add(ds_y,Me.y);
        ds_list_add(ds_rm,room);
        ds_list_add(ds_spr,Me.sprite_index);
        ds_list_add(ds_idx,Me.image_index);
        ds_list_add(ds_xs,Me.image_xscale);
        ds_list_add(ds_ys,Me.image_yscale);
        ds_list_add(ds_st,-1);
    } else {
        ds_list_add(ds_x,0);
        ds_list_add(ds_y,0);
        ds_list_add(ds_rm,room);
        ds_list_add(ds_spr,0);
        ds_list_add(ds_idx,0);
        ds_list_add(ds_xs,0);
        ds_list_add(ds_ys,0);
        ds_list_add(ds_st,0);
    }
    
}

