/*if !ds_queue_empty(d_x) && enable {
    var tx, ty, ts, ti, txs, tys;
    tx=ds_queue_dequeue(d_x);
    ty=ds_queue_dequeue(d_y);
    ts=ds_queue_dequeue(d_s);
    ti=ds_queue_dequeue(d_i);
    txs=ds_queue_dequeue(d_xs);
    tys=ds_queue_dequeue(d_ys);
    
    if ts==spr_PlayerFall ts=spr_cursefall;
    else if ts==spr_PlayerRunning ts=spr_curserun;
    else if ts==spr_PlayerJump ts=spr_cursejump;
    else if ts==spr_PlayerIdle ts=spr_curseplayer;
    
    draw_sprite_ext(ts,ti,tx,ty,txs,tys,0,c_white,random_range(0.7,1));
}

