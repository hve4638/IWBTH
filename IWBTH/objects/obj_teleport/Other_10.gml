var i, tx, ty;
tx=0; ty=0;
i=per;

if per!=0 {
    persistent=1;
    with(obj_player) {
        if other.ej {
            hspeed=0; vspeed=0;
        }
        
        if i>=32 {i-=32; tx+=other.nx;} //unused
        if i>=16 {i-=16; ty+=other.ny;} //unused
        if i>=8 {i-=8; tx+=x;} // x유지
        if i>=4 {i-=4; ty+=y;} // y유지
        if i>=2 {i-=2; tx+=other.rx;}
        if i>=1 {i-=1; ty+=other.ry;}
        persistent=1;
        x=tx; y=ty;
        if other.ec {
            toc=true;
            tox=tx;
            toy=ty;
        }
    }
}

if GOTO!=noone {room_goto(GOTO);}
with(obj_player) {x=tx; y=ty;}
persistent=0;
instance_destroy();

/*
per=14; rx=-3200;
type=1;
GOTO=rmboss1;

/* */
/*  */
