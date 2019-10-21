fade_get=0.1;
with(Me) depth=-16;

front=1;
oncurse=1;
ondark=0;
var i=instance_create(x,y,obj_curse);
with(i) {
    alarm[0]=100;
    if instance_exists(obj_player) repeat(50) {
        ds_queue_enqueue(d_x,Me.x);
        ds_queue_enqueue(d_y,Me.y);
        ds_queue_enqueue(d_s,Me.sprite_index);
        ds_queue_enqueue(d_i,Me.image_index);
        ds_queue_enqueue(d_xs,obj_player.xScale);
        ds_queue_enqueue(d_ys,Me.image_yscale);
    }
}

