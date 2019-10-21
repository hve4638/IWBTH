if On {ps++;}
else exit;

if cs<0 exit;

switch(cs)
{
    case 1:{ //1stage Golem
        if ps=0 {
            Me.freeze=0; cs=-1; 
            sys_cam.type=3; sys_cam.tx=736; sys_cam.ty=0;
            obj_golem.onhealth=1 obj_golem.alarm[0]=75;
            with(sys_global){vname=es("boss","golem"); vtime=100;}
            
            if wuss {
                kid_mxhp=3; kid_hp=3;
            }
            instance_destroy();
        }
    } break;
    case 2: {//1stage Ignis
        if ps=0 { cs=-1;
            var i;
            i=instance_create(768,0,obj_block);
            with(i) {image_yscale=30;}
            sys_cam.type=3; sys_cam.tx=800; sys_cam.ty=0;
            //obj_fakeplayer.frozen=1;
            //scp_play(snd_Boss1,1);
            with(obj_ignis) event_user(1);
            with(sys_global) {vname=es("boss","ignis"); vtime=100;}
            with(INST1) {instance_destroy();}
            instance_destroy();
        }
    } break;
    case 3: { //Goto Bossroom Ignis
        if ps==0 {
            ongod=true;
            Me.frozen=1; cansave=false;
            with(sys_cam) {fade_get=0.02;}
            audio_sound_gain(snd_Stage1, 0, 1200);
            persistent=1;
        } else if ps==90 {
            cansave=true;
            room_goto(rmboss1b);
        } else if ps==91 {
            with(sys_cam)
            {
                fade_col = c_black;
                fade_set = 1;
                fade_get = -0.01;
            }
            ongod=false;
            with(obj_player) vspeed = maxVspeed;
            with(obj_ignis) fire=140;
            instance_destroy();
        }
    } break;
    case 4: {
        with(sys_cam) {
            target=obj_fakeplayer;
            type=4;
            mx=800; my=608;
        }
        instance_destroy();
    } break;
    case 5: {
        with(sys_cam) {target=Me; type=4; rx=Me.x-400; if room==rmstage02a xmax=4000-800;}
        instance_destroy();
    } break;
    case 6: {
        with(sys_cam) {target=Me; type=2; xmax=room_width-800;}
        instance_destroy();
    } break;
    case 7: {
        scp_sfx(snd_Explode,1);
        with(Me) {vspeed=16; djump=0;}
        with(sys_cam) {shake=32; stime=6;}
        instance_destroy();
    } break;
    case 8: { //goto bossroom Karana
        if ps==0 {
            with(Me) {djump=0; frozen=1;}
            with(sys_cam) {fade_get=0.02;}
            audio_sound_gain(perbgm, 0, 1000);
            persistent=1; cansave=0;
        } else if ps==60 {
            room_goto(rmboss02);
        } else if ps==61 { cansave=1;
            with(sys_cam) {fade_get=-0.02; fade_set=1;}
            instance_destroy();
        }
    } break;
    case 9: { //End Karana scene
        if ps==60 {
            cansave=0;
            with(Me) {frozen=1;}
            with(sys_cam) {fade_get=0.02;}
        }
        else if ps==120 {
            persistent=1;
            room_goto(rmsin01);
        } else if ps==121 {
            scp_shake(3,10000,1);
            with(sys_cam) {fade_get=-0.02; fade_set=1;}
        } else if ps==180 {
            scp_shake(32,15,1);
            audio_play_sound(snd_Explode,0,0);
            with(obj_sealedstone) {
                var i=instance_create(x,y,obj_charge);
                with(i) {
                    ktime=20;
                    image_blend=c_black;
                    get_xscale=2;
                    get_yscale=2;
                }
            }
        }
        else if ps==195 scp_shake(3,10000,1);
        else if ps==250 {
            scp_shake(32,15,1);
            audio_play_sound(snd_Explode,0,0);
            with(obj_sealedstone) {
                var i=instance_create(x,y,obj_charge);
                with(i) {
                    ktime=20;
                    image_blend=c_black;
                    get_xscale=2;
                    get_yscale=2;
                }
            }
        }
        else if ps==270 {
            scp_shake(6,1000,1);
            with(sys_cam) {tx=1600;}
            with(Me) {adhspd=3.5; INDEX=spr_PlayerRunning; INDEX_SPEED=0.5;}
            ps2=0;
        } else if 270<ps {
            with(Me) {adhspd=3.5;}
            if ps==320 {with(Me) scp_jump(); INDEX=spr_PlayerJump;}
            else if ps==330 with(Me) {scp_vjump(); INDEX=noone;}
            if ps==365 instance_create(1400,288,obj_sin1event);
            if ps==450 {
                audio_play_sound(snd_dive,0,0);
            }
            else if ps==600 {
                room_goto(rmstage03a);
            }
            else if ps==601 {
                cansave=1;
                with(sys_cam) {fade_get=-0.01; fade_set=1; fade_col=c_white;}
                instance_destroy();
            }
        }
    } break;
    case 10: {
        with(obj_jellyfish) {
            if !act && type==2 && other.rx<x && x<other.rx2
            && other.ry<y && y<other.ry2 {act=true;}
        } instance_destroy();
    } break;
    case 11: {
        with(obj_jellyfish) {
            if act && type==2 && other.rx<x && x<other.rx2
            && other.ry<y && y<other.ry2 {act=false;}
        } instance_destroy();
    } break;
    case 12: { //3stage: goto room3 scroll event
        if ps==0 {
            ongod=true;
            cansave=false;
            with(obj_jellyfish) {act=0;}
            with(Me) {djump=0; frozen=1;}
            with(sys_cam) {fade_get=0.05;}
            persistent=1;
        } else if ps==60 {
            room_goto(rmstage03c);
        } else if ps==61 {
            ongod=false;
            cansave=true;
            scp_save(384,32,room);
            instance_destroy();
        }
    } break;
    case 13: {
        if ps=60 {
            var i, j, s;
            var vy=__view_get( e__VW.YView, 0 )-96;
            s=5.5;
            for(i=0;i<9;i++) {
                j=instance_create(256+32*i,vy+irandom_range(-32,32),obj_jellyfish);
                with(j) {
                    spd=s; direction=-90;
                    type=3; tm=90;
                    self.i=irandom_range(5,8)*10;
                }
            }
            
            for(i=0;i<4;i++) {
                j=instance_create(256+32*irandom_range(0,8),vy+irandom_range(-32,32),obj_jellyfish);
                with(j) {
                    spd=s; direction=-90;
                    type=3; tm=90;
                    self.i=irandom_range(5,8)*10;
                }
            }
            instance_destroy();
        }
        
    } break;
    case 14: {
        with(obj_jellyfish) {
            if other.rx<x && x<other.rx2 && other.ry<y && y<other.ry2 {
                speed=other.p_spd;
                direction=other.p_dir;
            }
        } instance_destroy();
    } break;
    
    case 15: { //Witch
        with(obj_witch) event_user(0);
        instance_destroy();
    } break;
    
    case 16: { //stage2: middle boss
        var i=instance_create(4832,32,obj_block);
        i.image_yscale=4;
        
        with(sys_cam) {
            type=3;
            tx=4800+64;
            ty=0;
        }
        with(obj_sealedstone_boss) event_user(0);
        
        if wuss {
            kid_mxhp=3; kid_hp=3;
        }
        instance_destroy();
    } break;
    
    case 17: {
        with(sys_global) {
            var i=0;
            repeat(7) ki[i++]=0;
        }
        room_goto(rmstage04a);
        instance_destroy();
    } break;
    
    case 18: {
        if !instance_exists(obj_jijin) instance_create(0,0,obj_jijin);
        with(sys_cam) ymax=0;
        instance_destroy();
    } break;
    
    case 19: {
        with(obj_jijin) instance_destroy();
        scp_shake(2,5000,0);
        instance_destroy();
    } break;
    
    case 20: {
        scp_shake(50,10,1);
        audio_play_sound(snd_Explode,0,0);
        with(Me) {vspeed = 8; djump=0;}
        
        var i=instance_create(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ) div 2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.WView, 0 ) div 5 * 4,obj_charge);
        with(i) {
            ktime=20;
            image_blend=c_black;
            get_xscale=2;
            get_yscale=2;
            image_alpha=0.5;
        }
        with(obj_breakgener) instance_destroy();
        instance_destroy();
    } break;
    
    case 21: { //Summon Instance
        instance_create(sx,sy,Ins);
        instance_destroy();
    } break;
    
    case 22: { //Destroy Instance
        with(Ins) instance_destroy();
        instance_destroy();
    } break;
    
    case 23: { ///ruin blackout
        if sys_global.ki[5]==false {On=0; break;}
        if (!wuss && sys_lighting.val<240) || (wuss && sys_lighting.val<230)
        {sys_lighting.val+=0.5;}
        else instance_destroy();
    } break;
    
    case 24: { //Ruin scroll event
        if ps==0 {
            cansave=false;
            persistent=1;
            with(Me) {frozen=1;}
        }
        else if 25==ps {
            with(obj_platform2) image_index=1;
        }
        else if 50<=ps && ps<120 {
            scp_shake(1,1,0);
            with(Me) {x+=2;}
            with(obj_platform2) {x+=2;}
            if ps==100 with(sys_cam) {fade_get=0.1;}
        }
        else if ps==130 {
            room_goto(rmstage04b);
        } else if ps==131 {
            cansave=1;
            instance_destroy();
        }
    } break;
    
    case 25: { //Goto Bossroom Mage
        if ps==0 {
            ongod=true;
            Me.frozen=1; cansave=false;
            with(sys_cam) {fade_get=0.02;}
            persistent=1;
        } else if ps==90 {
            room_goto(rmstage04c);
        } else if ps==91 {
            Me.frozen=1;
            with(sys_cam) {
                ymax=room_height-608;
                fade_set=1;
                fade_get=-0.03;
            }
            with(obj_platform2) {y+=128; image_index=1;}
            with(Me) y+=128;
        } else if 92<=ps && ps<156 {
            scp_shake(3,1,1);
            with(obj_platform2) y-=2;
            with(Me) y-=2;
        } else if ps==156 {
            scp_shake(16,4,1);
            with(obj_platform2) image_index=0;
            audio_sound_gain(perbgm, 0, 3000);
        } else if ps==160 {
            Me.frozen=0;
            cansave=true;
            ongod=false;
            with(sys_cam) ymax=0;
            instance_destroy();
        }
    } break;
    
    case 26: { //Goto Bossroom Mage
        if ps==0 {
            Me.frozen=1;
            with(sys_cam) {fade_get=0.03;}
            persistent=1;
        } else if ps==90 {
            room_goto(rmstage04d);
        } else if ps==91 {
            with(sys_cam) {fade_set=1; fade_get=-0.03;}
            instance_destroy();
        }
    } break;
    
    case 27: {
        if 0<ps && ps<100 {
            with(obj_player) {
                frozen=true;
                INDEX=spr_PlayerRunning;
                INDEX_SPEED=0.2;
                adhspd=2.5;
                //x+=2.5;
            }
        }
        
        if ps==50 {
            Me.frozen=1;
            with(sys_cam) {fade_get=0.02;}
            persistent=1;
        } else if ps==180 {
            room_goto(rmstage06a);
        } else if ps==181 {
            with(sys_cam) {fade_set=1; fade_get=0;}
        } else if ps==230 {
            cansave=true;
            ongod=false;
            with(obj_player) {
                frozen=false;
                INDEX=noone;
            }
            with(sys_cam) {fade_set=1; fade_get=-0.01;}
            instance_destroy();
        }
    } break;
    
    case 28: {
        with(inst_BE7337B7) instance_destroy();
        with(inst_F2DAD57D) instance_destroy();
        instance_destroy();
    } break;
    
    case 29: {
        with(Me) {
            vspeed=5;
            reb_h=28;
            var i=instance_create(x,y,obj_charge);
            i.ktime=20;
            i.get_xscale=0.2;
            i.get_yscale=1;
            i.get_alpha=-0.02;
            i.image_alpha=0.4;
        }
        On=0;
    } break;
    
    case 30: {
        if ps==1 {
            audio_sound_gain(perbgm, 0, 3000);
        } else if ps=150 {
            audio_stop_sound(perbgm);
            perbgm=noone;
            instance_destroy();
        }
    } break;
    
    case 31: {
        with(obj_water) {
            image_alpha=max(0.5,image_alpha-0.02);
        }
        
        if ps==1 {
            scp_play(snd_StageF3,1);
            audio_sound_gain(perbgm, 0, 0);
            audio_sound_gain(perbgm, 1, 3000);
        } else if ps==250 instance_destroy();
    } break;
    
    case 32: {
        image_index=1;
        cs=noone;
    } break;
    
    case 33: {
        audio_sound_gain(perbgm, 0, 1000);
        prebgm=noone;
        instance_destroy();
    } break;
    
    case 34: {
        if ps==1 {
            if perbgm==snd_Final0 {
                audio_sound_gain(perbgm, 0, 1000);
                prebgm=noone;
            }
        }
        else if ps==50 {
            scp_play(snd_StageF2,1);
            instance_destroy();
        }
    } break;
    
    case 35: {
        if ps<50 {
            with(sys_lighting) {val++;}
        }
        if ps==1 {
            cansave=0;
            with(Me) {frozen=1;}
            with(sys_lighting) {val-=50;}
            audio_sound_gain(perbgm, 0, 2500);
        }
        else if ps==50 {
            with(sys_cam) fade_get=0.02;
            persistent=1;
        }
        else if ps==150 {
            room_goto(rmstageFinal0);
        }
        else if ps==151 {
            with(sys_cam) {
                fade_set=1;
                fade_get=-0.01;
            }
            with(Me) frozen=1;
        }
        else if ps==250 {
            cansave=1;
            with(Me) frozen=0;
            instance_destroy();
        }
    } break;
    
    case 36: {      
        if ps==1 {
            if !(sys_global.orb[1] && sys_global.orb[2]) || guy {
                instance_destroy();
                exit;
            } else {
                cansave=0;
                with(Me) frozen=1;
            }
        }
        else if 100<=ps && ps<150 {
            if ps==100 with(obj_guyfield) cnt=2;
            if ps==149 with(obj_guyfield) cnt=4;
            with(obj_sealedstone) {
                la+=0.02;
            }
        } else if ps==210 {
            with(sys_cam) {
                fade_get=0.05;
                fade_col=c_white;
            }
        } else if ps==300 {
            with(sys_cam) fade_get=-0.01;
            with(obj_guyorb1) instance_destroy();
            with(obj_guyorb2) instance_destroy();
            with(obj_guyfield) instance_destroy();
            with(obj_sealedstone) la=0;
            guy=true;
        } else if ps==400 {
            var i=instance_create(64,320,obj_text);
            i.text="Go Back";
            
            with(obj_player) frozen=0;
            cansave=1;
            instance_destroy();
        }
        
        if ps<230 {
            if 200<=ps scp_shake(6,1,1);
            else if 150<=ps scp_shake(4,1,1);
            else if 100<=ps scp_shake(2,1,1);
            
            if 200<ps {
                with(obj_guyorb1) {
                    path_end();
                    scp_follow(Me.x,Me.y,13);
                }
                with(obj_guyorb2) {
                    path_end();
                    scp_follow(Me.x,Me.y,13);
                }
            }
        }
    } break;
    
    case 37: {//Stage5 Boss scene
        if ps<=1 {
            cansave=false;
            Me.xScale=-1;
            with(sys_cam) {
                type=3;
                tx=0; ty=0;
            }
        } else if 565+32<Me.x {
            with(obj_player) {
                frozen=true;
                INDEX=spr_PlayerRunning;
                INDEX_SPEED=0.2;
                adhspd=-3;
            }
            ps=10;
        } 
        else if ps==11 {Me.INDEX=noone;}
        else if ps==45 {
            with(obj_event_vampire) {
                j=30;
                repeat(3) { j+=irandom_range(25,40);
                    var i=instance_create(x,y,obj_bloodball);
                    i.direction=j; i.isaft=2;
                    i.speed=irandom_range(10,13); i.minspd=0;
                    i.movspd=-0.5;
                    scp_sfx(snd_magic3,5);
                }
            }
        }
        else if ps==75 {
            with(obj_bloodball) {
                direction=point_direction(x,y,Me.x,Me.y);
                movspd=1; maxspd=16;
            }
        }
        else if ps==78+5 {
            with(obj_player) scp_jump();
        }
        else if ps==90+5 {
            with(obj_player) scp_vjump();
        }
        else if 98<ps && ps<220 {
            if ps<210 with(obj_player) {
                if 105<other.ps && other.ps<135 {
                    if other.ps mod 4 == 0 {
                        var i=instance_create(x+12,608,obj_laser);
                        i.image_angle=90; i.image_index=1; i.image_blend=c_white;
                        i.ar=3; i.ad=3;
                        scp_sfx(snd_Explode3,5);
                    }
                }
                frozen=true;
                if onBlock INDEX=spr_PlayerRunning;
                else INDEX=noone;
                INDEX_SPEED=0.2;
                adhspd=-3;
            }
            else with(obj_player) {xScale=1; Me.INDEX=noone;}
            
            
            if ps==140 with(obj_player) {scp_jump(); Me.INDEX=noone;}
            else if ps==155 room_speed=20;
            else if ps==160 {
                for(var i=380;i<380+16*8;i+=24) {
                    var j=instance_create(0,i,obj_laser);
                    j.image_index=1; j.image_blend=c_white;
                    j.ar=2; j.ad=2;
                    scp_sfx(snd_Explode3,3);
                }
            }
            else if ps==165 with(Me) scp_shoot();
            else if ps==168 room_speed=50;
            
            if ps==150 with(obj_event_vampire) {onblood=true; ondark=false;}
            else if 165<ps && ps<185 with(obj_event_vampire) {image_alpha-=0.05;}
            else if ps==185 with(obj_event_vampire) {onblood=false; image_alpha=0; x=580;}
            else if 195<ps && ps<215 with(obj_event_vampire) {
                onblood=true;
                image_alpha+=0.05;
            }
            else if ps==215 with(obj_event_vampire) {onblood=false; ondark=true;}
        }
        else if ps==270 {
            with(obj_event_vampire) {
                var i=instance_create(x,y,obj_banjak);
                i.image_xscale=0; i.image_yscale=0;
                i.movxsc=0.4; i.movysc=0.4;
            }
            scp_sfx(snd_magic3,1);
        }
        else if ps==280 with(obj_banjak) {movxsc=2.5; movysc=2.5;}
        else if ps==300 scp_sfx(snd_Explode,3);
        else if ps==325 {
            persistent=1;
            with(obj_player) {persistent=1;}
        }
        else if ps==326 {
            with(obj_player) {persistent=1;}
            room_goto(rmboss05);
        } else if ps==327 {
            cansave=1;
            with(Me) frozen=0;
            with(sys_cam) {fade_set=1; fade_get=-0.01; fade_col=c_white;}
            scp_shake(3,100,1);
            scp_save(Me.x,Me.y,rmboss05);
            instance_destroy();
        }
    } break;
    
    case 38: {
        with(sys_cam) {
            xmin=other.X1;
            ymin=other.Y1;
            xmax=other.X2;
            ymax=other.Y2;
        }
        On=false; ps=0;
    } break;
    
    case 39: {
        if ps==1 {
            cansave=false;
            with(Me) {frozen=true; xScale=1;}
            scp_sfx(snd_Explode3,1);
            audio_play_sound(snd_Explode3,0,0);
        }
        else if ps==20 {
            with(sys_cam) fade_get=-0.02;
            scp_shake(2,1000,1);
        }
        else if ps==180 {
            with(sys_cam) {fade_get=0.007; fade_col=c_black;}
        }
        else if ps==400 {
            room_goto(rmending1);
        }
    } break;
    
    case 40: {
        if ps==0 {ps2=1; with(sys_global) {vname=es("boss","dimension"); vtime=206;}}
        else if ps<=200 && ps mod 2 == 0 {
            var j=ps2*ps2*51/2000;
            ps2++;
            
            var i=instance_create(0,0,obj_gra);
            i.col=make_colour_rgb(j,j,j);
            
        }
        else if ps==201 {__background_set_colour( c_white );}
        else if ps==240 {
            room_goto(rmlastboss);
            cansave=true;
            scp_save(400,433,rmlastboss);
        }
    } break;
    
    case 41: {
        with(sys_cam) {
            type=4;
            xmin=0; xmax=0;
            ymin=608; ymax=room_height-304;
        }
        On=false;
    } break;
    
    case 42: {
        with(sys_cam) {
            type=2;
            xmin=0; xmax=room_width-400;
            ymin=0; ymax=room_height-304;
        }
        On=false;
    } break;
    
    case 43: {
        /*if ps<120 {
            with(obj_player) {
                frozen=true;
                INDEX=spr_PlayerRunning;
                INDEX_SPEED=0.2;
                adhspd=3;
            }
            cansave=0;
        }*/
        if ps==75 {
            with(obj_player) {frozen=true;}
        }
        else if ps==120 {
            persistent=1;
            room_goto(rmstage02a);
        }
        else if ps==121 {
            cansave=true;
            instance_destroy();
        }
    } break;
    
    case 44: {
        with(obj_player) vspeed=maxVspeed;
        instance_destroy();
    } break;
    
    case 45: {
        if ps==1 with(obj_player) scp_jump();
        else if ps==3 with(obj_player) scp_vjump();
        else if 3<ps {ps=0; On=0;}
    } break;
    
    case 46: {
        if ps==10 {
            with(sys_cam) {
                type=4;
            }
            instance_destroy();
        }
    } break;
    
    case 47: {
        if ps==8 {
            __background_set_pp( e__BG.X, 1, __background_get( e__BG.X, 1 ) + 1 );
            ps=0;
        }
    } break;
    
    case 48: {
        if !instance_exists(obj_player) instance_destroy();
    } break;
    
    case 49: {
        ongod=true;
        if ps<100 with(obj_player) {
            INDEX=spr_PlayerRunning;
            INDEX_SPEED=0.5;
            adhspd=-3;
        }
        if ps==1 {
            with(sys_cam) {
                fade_get=0.01;
                fade_col=c_black;
            }
        }
        else if ps==120 {
            ongod=false;
            room_goto(rmstage05e);
            instance_destroy();
        }
    } break;
    
    case 50: {
        with(obj_player)
        {
            reb_h = -18;
            vspeed = -4;
        }
        var i = instance_create(4768,0,obj_block);
        with(i)
        {
            image_xscale = 1;
            image_yscale = 12;
        }
        with(obj_karena) event_user(1);
        instance_destroy();
    } break;
    
    case 51:
    {
        if ps==40 
        {
            with(obj_portcullis) vspeed = -1;
            with(inst_DD53987D) vspeed = -1;
            scp_shake(3,32*6 + 8,1);
        }
        else if ps == 40 + 32*6
        {
            with(obj_portcullis) vspeed = 0;
            with(inst_DD53987D) vspeed = 0;
            scp_shake(18,3,1);
            instance_destroy();
        }
    } break;
    
    case 52:
    {
        if 0<ps && ps<34 {
            ongod = true;
            with(obj_player) {
                frozen=true;
                INDEX=spr_PlayerRunning;
                INDEX_SPEED=0.2;
                adhspd=2.5;
            }
        }
        
        if ps==0 {
            with(sys_cam) {fade_get=0.03;}
            persistent=1;
        } else if ps==40 {
            SWITCH[0] = false;
            room_goto(rmstage06b);
        } else if ps==41 {
            with(sys_cam) {fade_set=1; fade_get=0;}
            cansave=true;
            ongod=false;
            with(obj_player) {
                frozen=false;
                INDEX=noone;
            }
            with(sys_cam) {fade_set=1; fade_get=-0.03;}
            instance_destroy();
        }
    } break;
    
    case 53:
    {
        if !SWITCH[0]
        {
            with(inst_7371152B) instance_destroy();
        }
        instance_destroy();
    } break;
    
    case 54:
    {
        with(sys_cam) {
            type=other.c_type;
            xmin=other.c_xmin; xmax=other.c_xmax;
            ymin=other.c_ymin; ymax=other.c_ymax;
        }
        On=false;
    } break;
    
    case 55:
    {
        if ps == 0
        {
            persistent = true;
            Me.persistent = true;
            Me.x = Me.x mod 800;
            Me.y = Me.y mod 608;
            
            room_goto(rmstage06c);
        }
        else if ps == 1 
        {
            with(sys_cam) type = 2;
            instance_destroy();
        }
    } break;
    
    case 56:
    {
        if ps<40
        {
            On=false;
        }
        else
        {
            if ps==40
            {
                ongod=true;
                with(obj_player) frozen = true;
                with(sys_cam) {
                    fade_get=0.02;
                    fade_col=c_black;
                }
            }
            else if ps==100
            {
                persistent = 1;
            }
            else if ps==101
            {
                room_goto(c_goto);
            }
            else if ps==102
            {
                with(obj_player)
                {
                    scp_save(x,y,room);
                }
                ongod=false;
                with(sys_cam) {
                    fade_set = 1;
                    fade_get = -0.01;
                    fade_col=c_black;
                }
                instance_destroy();
            }
        }
    } break;
    
    case 57:
    {
        with(obj_player)
        {
            x += other.c_tox;
            y += other.c_toy;
        }
        with(sys_cam)
        {
            rx += other.c_tox;
            ry += other.c_toy;
        }
        On = false;
    } break;
    
    case 58:
    {
        if ps == 0
        {
            with(sys_cam)
            {
                type = 3;
                tx = 1184 - 400;
                ty = 0;
                ymin = room_height - 608;
                
                MX = 20;
                MY = 20;
            }
        }
        if 0<=ps && ps<60 {
            cansave=0;
            ongod = true;
            with(obj_player) {
                frozen=true;
                INDEX=spr_PlayerRunning;
                INDEX_SPEED=0.2;
                adhspd=2.5;
            }
        }
        if ps == 60
        {
            with(obj_player) {
                frozen=true;
                INDEX=noone;
            }
            ps = 90;
        }
            
        if 150<ps && ps<270
        {
            if 250<=ps scp_shake(6,1,1);
            else if 200<=ps scp_shake(4,1,1);
            else if 150<=ps scp_shake(2,1,1);
            
            if 150<ps
            with(obj_sealedstone) {
                la+=0.02;
            }
        }
        if ps == 225
        {
            var i = instance_create(1600,irandom_range(256-32,256+32),obj_bloodball);
            with(i)
            {
                direction = point_direction(x,y,1184,256);
                minspd=0; movspd=0; isaft = true;
                image_alpha = 1;
                speed = 19;
            }
        }
        if ps == 244
        {
            room_goto(rmsin4);
        }
    } break;
    
    case 59:
    {
        if ps == 40 
        {
            with(sys_cam)
            {
                fade_get = -0.02;
            }
        }
        
        if ps == 60
        {
            with(obj_sealedstone)
            {
                if scp_follow(obj_event_vampire.x,obj_event_vampire.y,20)<32
                {
                    instance_destroy();
                }
                other.ps = 59;
            }
        }
        else if ps == 61
            ps = 210;
            
        if ps==250 {
            with(obj_event_vampire) {
                var i=instance_create(x,y,obj_banjak);
                i.image_xscale=0; i.image_yscale=0;
                i.movxsc=0.2; i.movysc=0.2;
            }
        }
        else if ps==265 with(obj_banjak) {movxsc=2.5; movysc=2.5;}
        else if ps==290 scp_sfx(snd_Explode3,3);
        else if ps==310 {
            persistent=1;
        }
        else if ps==311 {
            room_goto(rmboss06);
        } else if ps==312 {
            cansave=1;
            ongod = false;
            with(sys_cam) {fade_set=1; fade_get=-0.01; fade_col=c_white;}
            scp_shake(3,100,1);
            scp_save(Me.x,Me.y,rmboss06);
            instance_destroy();
        }
    
    } break;
    
    case 60:
    {
        if ps<40
        {
            On=false;
        }
        else
        {
            if ps==40
            {
                ongod=true;
                with(obj_player) frozen = true;
                with(sys_cam) {
                    fade_get=0.02;
                    fade_col=c_black;
                }
                audio_sound_gain(perbgm,0,2000);
            }
            else if ps==170
            {
                persistent = 1;
            }
            else if ps==171
            {
                room_goto(c_goto);
            }
            else if ps==172
            {
                with(obj_player)
                {
                    scp_save(x,y,room);
                }
                ongod=false;
                with(sys_cam) {
                    fade_set = 1;
                    fade_get = -0.01;
                    fade_col=c_black;
                }
                instance_destroy();
            }
        }
    } break;
    
    case 61:
    {
        if ps<20
        {
            On=false;
        }
        else
        {
            if ps==20
            {
                with(obj_player) frozen = true;
                with(sys_cam) {
                    fade_get=0.05;
                    fade_col=c_black;
                }
            }
            else if ps==50
            {
                persistent = 1;
            }
            else if ps==51
            {
                room_goto(c_goto);
            }
            else if ps==52
            {
                if instance_exists(obj_player)
                {
                    obj_player.x = c_x;
                    obj_player.y = c_y;
                }
                else
                    instance_create(c_x,c_y,obj_player);
                
                with(sys_cam) {
                    fade_set = 1;
                    fade_get = -0.03;
                    fade_col=c_black;
                    rx = obj_player.x - 400;
                    ry = obj_player.y - 306;
                }
                instance_destroy();
            }
        }
    } break;
    
    case 62:
    {
        if ps==0 
            audio_sound_gain(perbgm,0,1000);
            
        if 0<=ps && ps<10 {
            ongod = true;
            with(obj_player) {
                frozen=true;
                INDEX=spr_PlayerRunning;
                INDEX_SPEED=0.2;
                adhspd=2.5;
                //x+=2.5;
            }
        }
        
        if ps==10 {
            with(sys_cam) {fade_get=0.02;}
            persistent=1;
        } else if ps==80 {
            room_goto(rmteleport);
        } else if ps==81 {
            if instance_exists(obj_player)
            {
                obj_player.x = 336;
                obj_player.y = 375;
            }
            else
                instance_create(336,375,obj_player);
            with(sys_cam) {fade_set=1; fade_get=-0.01;}
            cansave=true;
            ongod=false;
            instance_destroy();
        }
    } break;
    
    case 63:
    {
        if ps<20
        {
            On=false;
        }
        else
        {
            if ps==20
            {
                with(obj_player) frozen = true;
                with(sys_cam) {
                    fade_get=0.05;
                    fade_col=c_black;
                }
                audio_sound_gain(perbgm,0,2000);
            }
            else if ps==120
            {
                persistent = 1;
            }
            else if ps==121
            {
                room_goto(c_goto);
            }
            else if ps==122
            {
                if instance_exists(obj_player)
                {
                    obj_player.x = c_x;
                    obj_player.y = c_y;
                }
                else
                    instance_create(c_x,c_y,obj_player);
                obj_player.xScale = -1;
                    
                with(sys_cam) {
                    fade_set = 1;
                    fade_get = -0.01;
                    fade_col=c_black;
                    rx = obj_player.x - 400;
                    ry = obj_player.y - 306;
                }
                instance_destroy();
            }
        }
    } break;
}

/* */
/*  */
