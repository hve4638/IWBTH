if instance_exists(obj_player) {
    ds_queue_enqueue(d_x,Me.x);
    ds_queue_enqueue(d_y,Me.y);
    ds_queue_enqueue(d_s,Me.sprite_index);
    ds_queue_enqueue(d_i,Me.image_index);
    ds_queue_enqueue(d_xs,obj_player.xScale);
    ds_queue_enqueue(d_ys,Me.image_yscale);
}

if ds_queue_empty(d_x) {
    if enable instance_destroy();
} else {
    lastx=ds_queue_head(d_x);
    lasty=ds_queue_head(d_y);
}

if enable && collision_point(lastx,lasty,obj_player,1,0) scp_kill();

