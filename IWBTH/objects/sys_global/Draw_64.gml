/// @description Time & death

//if keyboard_check(ord('O')) show_message(window_get_height());

var wh = display_get_gui_height();
var ww=800/608*wh;
if onui {
    draw_set_font(Font2);
    draw_set_alpha(0.5);
    draw_rectangle_colour(0,wh-24,ww,wh,c_black,c_black,c_black,c_black,0);
    draw_set_alpha(1);
    draw_set_color(c_white);
    draw_text(4,wh-20,string_hash_to_newline(es("info","death")+": "+string(death)));
    draw_set_halign(fa_right);
    draw_text(ww-8,wh-20,string_hash_to_newline(es("info","time")+": "+string(time)));
    draw_set_font(Font0); draw_set_halign(fa_left);
}

///Cheat
var a="";
if cheat && (ontp || ongod || vismask || ondeal || showvar || wuss) {
    if ongod a+="God Mod#";
    if ontp a+="Enable Teleport#";
    if ondeal a+="Enable Damage Control("+string(DEAL)+")#";
    if vismask a+="Mask Visible#";
    if showvar {
        a+="fps: "+string(fps)+" ("+string(room_speed)+")#";
        a+="mouse: "+string(mouse_x)+","+string(mouse_y)+"("+string(display_mouse_get_x())+","+string(display_mouse_get_y())+")"+"#";
        a+="gui size: "+string(display_get_gui_width())+","+string(display_get_gui_height())+"#";
        a+="instance: "+string(instance_number(all))+"#";
        a+="lastkey: "+string(keyboard_key)+"#";
        a+="P: "+string(reroom_idx)+"#";
        a+="currentroom: "+room_get_name(room)+"#";
        with(obj_player) {
            a+="[obj_player] "+"("+string(x)+","+string(y)+")#";
            a+=" FLIP: "+string(FLIP)+"#";
            a+=" OnBlock: "+string(onBlock)+"#";
            a+=" djump: "+string(djump)+"#";
            a+=" gravity: "+string(gravity)+"#";
            a+=" reb: "+string(debug_reb)+"#";
            a+=" hmore: "+string(hjump_spd)+" ("+string(hjump_break)+")#";
            //a+=' dir' +string(firstinput)+' '+string(predir)+' '+string(predir*firstinput)+'#';
        }
        with(sys_cam) {
            a+="[sys_cam] "+"("+string(x-400)+","+string(y-304)+")#";
            a+=" type: "+string(type)+"   target: "+string(object_get_name(target))+"#";
            a+=" xrange: "+string(xmin)+"~"+string(xmax)+"#";
            a+=" yrange: "+string(ymin)+"~"+string(ymax)+"#";
            a+=" fade: "+string(fade_set)+" ("+string(fade_get)+")#";
            a+=" view angle: "+string(__view_get( e__VW.Angle, 0 ))+"#";
        }
        with(obj_replay)
        {
            var i=clamp(rec_pos,0,ds_list_size(ds_x)-1);
            var X=ds_list_find_value(ds_x,i);
            var Y=ds_list_find_value(ds_y,i);
            var R=ds_list_find_value(ds_rm,i);
            var SPR=ds_list_find_value(ds_spr,i);
            var IDX=ds_list_find_value(ds_idx,i);
            var XS=ds_list_find_value(ds_xs,i);
            var YS=ds_list_find_value(ds_ys,i);
            var ST=ds_list_find_value(ds_st,i);
            a+="[obj_replay]#";
            a+=" visible : " + string(visible) +"#";
            a+=" rec_play : " + string(rec_playing) +"#";
            a+=" rec_speed : " + string(rec_speed) +"#";
            a+=" rec_pos : " + string(rec_pos) +"#";
            a+="("+string(X)+","+string(Y)+")#";
            a+="room : " + string(room_get_name(R)) + "#";
            a+="sprite : " + string(SPR) + "("+string(IDX)+")#";
            a+="st : " + string(ST) +"#"
            
        }
        
        with(obj_trigger) {
            if On {
                a+="[obj_trigger]#";
                a+=" trigger: "+string(cs)+"#";
                a+=" pos: "+string(ps)+"#";
            }
        }
        with(sys_lighting) {
            a+="[sys_lighting]#";
            a+=" bright: "+string(val)+"#";
        }
        with(obj_ignis) {
            var i=ds_list_size(echo_x);
            
            a+="[obj_ignis]#";
            for(;0<=i;i--) {
                tx=string(ds_list_find_value(echo_x,i));
                ty=string(ds_list_find_value(echo_y,i));
                txs=string(ds_list_find_value(echo_xs,i));
                tys=string(ds_list_find_value(echo_ys,i));
                talp=string(ds_list_find_value(echo_alp,i));
                tang=string(ds_list_find_value(echo_ang,i));
                tb=string(ds_list_find_value(echo_b,i));
                a+=tx+","+talp+"#";
                //draw_sprite_ext(spr_ignis,0,tx,ty,txs,tys,tang,tb,talp * (i+1)/psize);
            }
        }
        with(obj_sorcerer) {
            a+="[obj_ignis]#";
            a+=" shield armor: "+string(1 - SHIELD/MAXSHIELD)+"#";
        }
        with(obj_vampair) {
            a+="[obj_vampire]#";
            a+=" timeline: "+string(timeline_position)+"#";
        }
    }
}
//a+=string(room);

draw_set_font(Font2); draw_set_color(c_black);
draw_text(-1,0,string_hash_to_newline(a));
draw_text(1,0,string_hash_to_newline(a));
draw_text(0,-1,string_hash_to_newline(a));
draw_text(0,1,string_hash_to_newline(a));
draw_set_color(c_white); draw_text(0,0,string_hash_to_newline(a));
draw_set_font(Font0);

