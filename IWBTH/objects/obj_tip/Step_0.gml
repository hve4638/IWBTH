if place_meeting(x,y,obj_player) On=true;
else On=false;


if On {
    image_alpha-=0.1;
    if onreplay {
        if !instance_exists(replayid) {
            replayid=instance_create(0,0,obj_replay);
            ds_list_copy(replayid.ds_x,ds_x);
            ds_list_copy(replayid.ds_y,ds_y);
            ds_list_copy(replayid.ds_rm,ds_rm);
            ds_list_copy(replayid.ds_spr,ds_spr);
            ds_list_copy(replayid.ds_idx,ds_idx);
            ds_list_copy(replayid.ds_xs,ds_xs);
            ds_list_copy(replayid.ds_ys,ds_ys);
            ds_list_copy(replayid.ds_st,ds_st);
        }
    }
}
else {
    image_alpha+=0.1;
    if instance_exists(replayid) {
        with(replayid) isdel=true;
        replayid=noone;
    }
}


image_alpha=clamp(image_alpha,0.1,1);
scp_light(x+16,y+16,64);

