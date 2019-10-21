with (sys_part) {
///1. Player Blood
if prt[1]==0 {
    Sys[1] = part_system_create();
    particle[1] = part_type_create();
    part_system_depth(Sys[1],-10)
    part_type_shape(particle[1],pt_shape_sphere);
    part_type_size(particle[1],0.10,0.20,0,0);
    part_type_scale(particle[1],1,1);
    part_type_color1(particle[1],255);
    part_type_alpha3(particle[1],1,0.80,0);
    part_type_speed(particle[1],0.80,2,0,0);
    part_type_direction(particle[1],0,359,0,0);
    part_type_gravity(particle[1],0.02,270);
    part_type_orientation(particle[1],0,0,0,0,1);
    part_type_blend(particle[1],0);
    part_type_life(particle[1],25,50);
    emitter[1] = part_emitter_create(Sys[1]);
    
    prt[1]++;
}

}
///2. Fireball effect
//Used: obj_flameball

if prt[2]==0 {
    Sys[2] = part_system_create();
    particle[2] = part_type_create();
    part_system_depth(Sys[2],-15);
    part_type_shape(particle[2],pt_shape_sphere);
    part_type_size(particle[2],0.10,0.10,0,0);
    part_type_scale(particle[2],3,3);
    part_type_color2(particle[2],8454143,255);
    part_type_alpha2(particle[2],1,0);
    part_type_orientation(particle[2],0,0,0,0,1);
    part_type_blend(particle[2],1);
    part_type_life(particle[2],30,30);
    emitter[2] = part_emitter_create(Sys[2]);

    prt[2]++;
}

///3. Holy Effect

if prt[3]==0 {
    Sys[3] = part_system_create();    
    particle[3] = part_type_create();
    part_system_depth(Sys[3],-10)
    part_type_shape(particle[3],pt_shape_sphere);
    part_type_size(particle[3],0.15,0.15,-0.005,0);
    part_type_scale(particle[3],3,3);
    part_type_color1(particle[3],16777215);
    part_type_alpha2(particle[3],1,0);
    part_type_speed(particle[3],0.40,0.40,0,0);
    part_type_direction(particle[3],0,359,0,0);
    part_type_orientation(particle[3],0,0,0,0,1);
    part_type_blend(particle[3],1);
    part_type_life(particle[3],40,60);
    emitter[3] = part_emitter_create(Sys[3]);
    
    prt[3]++;
}

///4. Earth Effect

if prt[4]==0 {
    Sys[4] = part_system_create();
    particle[4] = part_type_create();
    part_system_depth(Sys[4],-10)
    part_type_shape(particle[4],pt_shape_flare);
    part_type_size(particle[4],0.10,0.10,0,0);
    part_type_scale(particle[4],3,3);
    part_type_color1(particle[4],2568767);
    part_type_alpha3(particle[4],1,0.30,0);
    part_type_speed(particle[4],0.10,0.10,0,0);
    part_type_direction(particle[4],0,359,0,0);
    part_type_blend(particle[4],0);
    part_type_life(particle[4],30,30);
    emitter[4] = part_emitter_create(Sys[4]);
    
    prt[4]++;
}


///5. Flame Effect
//Used: obj_golem

if prt[5]==0 {
    Sys[5] = part_system_create();
    particle[5] = part_type_create();
    part_type_shape(particle[5],pt_shape_sphere);
    part_type_size(particle[5],0.10,0.10,0,0);
    part_type_scale(particle[5],3,3);
    part_type_color2(particle[5],8454143,255);
    part_type_alpha2(particle[5],1,0);
    part_type_speed(particle[5],1,1,0,0);
    part_type_direction(particle[5],80,100,0,0);
    part_type_gravity(particle[5],0,270);
    part_type_orientation(particle[5],0,0,0,0,1);
    part_type_blend(particle[5],1);
    part_type_life(particle[5],40,100);
    emitter[5] = part_emitter_create(Sys[5]);

    prt[5]++;
}

///6. Ignis Breath
//Used: tin_boss2c

if prt[6]==0 {
    Sys[6]= part_system_create();
    particle[6] = part_type_create();
    part_system_depth(Sys[6],-50);
    part_type_shape(particle[6],pt_shape_sphere);
    part_type_size(particle[6],0.10,0.10,0.01,0);
    part_type_scale(particle[6],4,4);
    part_type_color3(particle[6],8454143,6316287,255);
    part_type_alpha2(particle[6],0.40,0);
    part_type_speed(particle[6],2,2,0,0);
    part_type_direction(particle[6],90,270,0,0);
    part_type_gravity(particle[6],0.50,180);
    part_type_orientation(particle[6],0,0,0,0,1);
    part_type_blend(particle[6],1);
    part_type_life(particle[6],60,60);
    emitter[6] = part_emitter_create(Sys[6]);
    
    prt[6]++;
}

///7. Burst Effect

if prt[7]==0 {
    Sys[7]=part_system_create();
    particle[7] = part_type_create();
    part_system_depth(Sys[7],-12)
    part_type_shape(particle[7],pt_shape_sphere);
    part_type_size(particle[7],0.10,0.10,0,0);
    part_type_scale(particle[7],2.40,2.40);
    part_type_color3(particle[7],11908607,4227327,255);
    part_type_alpha3(particle[7],1,0.05,0);
    part_type_speed(particle[7],0.50,0.50,0,0);
    part_type_direction(particle[7],0,359,0,0);
    part_type_gravity(particle[7],0,270);
    part_type_orientation(particle[7],0,0,0,0,1);
    part_type_blend(particle[7],1);
    part_type_life(particle[7],20,10);
    emitter[7] = part_emitter_create(Sys[7]);
    
    prt[7]++;
}

///8. Dark_One Effect

if prt[8]==0 {
    Sys[8]= part_system_create();
    particle[8] = part_type_create();
    part_type_shape(particle[8],pt_shape_sphere);
    part_type_size(particle[8],0.10,0.10,0,0);
    part_type_scale(particle[8],5,5);
    part_type_color1(particle[8],c_black); //1776411
    part_type_alpha2(particle[8],1,0);
    part_type_speed(particle[8],0.50,0.80,0,0);
    part_type_direction(particle[8],0,359,0,0);
    part_type_gravity(particle[8],0,270);
    part_type_orientation(particle[8],0,0,0,0,1);
    part_type_blend(particle[8],0);
    part_type_life(particle[8],40,40);
    emitter[8] = part_emitter_create(Sys[8]);
    
    prt[8]++;
}

///9. Shadow & Holy Effect
//Used: obj_flameball

if prt[9]==0 {
    Sys[9] = part_system_create();
    particle[9] = part_type_create();
    part_type_shape(particle[9],pt_shape_sphere);
    part_type_size(particle[9],0.40,0.40,-0.01,0);
    part_type_scale(particle[9],1,1);
    part_type_color1(particle[9],16777215);
    part_type_alpha1(particle[9],1);
    part_type_speed(particle[9],0,0,0,0);
    part_type_direction(particle[9],0,359,0,0);
    part_type_gravity(particle[9],0,270);
    part_type_orientation(particle[9],0,0,0,0,1);
    part_type_blend(particle[9],1);
    part_type_life(particle[9],60,60);
    emitter[9] = part_emitter_create(Sys[9]);

    prt[9]++;
}

///10. Burst Effect

if prt[10]==0 {
    Sys[10]=part_system_create();
    particle[10] = part_type_create();
    part_type_shape(particle[10],pt_shape_sphere);
    part_type_size(particle[10],0.10,0.10,0,0);
    part_type_scale(particle[10],2.40,2.40);
    part_type_color1(particle[10],c_black);
    part_type_alpha3(particle[10],1,0.05,0);
    part_type_speed(particle[10],0.50,0.80,0,0);
    part_type_direction(particle[10],0,359,0,0);
    part_type_gravity(particle[10],0,270);
    part_type_orientation(particle[10],0,0,0,0,1);
    part_type_blend(particle[10],0);
    part_type_life(particle[10],20,40);
    emitter[10] = part_emitter_create(Sys[10]);

    prt[10]++;
}

///11. Flame Effect 2

if prt[11]==0 {
    Sys[11] = part_system_create();
    particle[11] = part_type_create();
    part_type_shape(particle[11],pt_shape_sphere);
    part_type_size(particle[11],0.10,0.10,0,0);
    part_type_scale(particle[11],1.3,1.3);
    part_type_color2(particle[11],33023,255);
    part_type_alpha2(particle[11],1,0.8);
    part_type_speed(particle[11],0.20,0.20,0,0);
    part_type_direction(particle[11],45,135,0,0);
    part_type_gravity(particle[11],0.03,90);
    part_type_orientation(particle[11],0,0,0,0,1);
    part_type_blend(particle[11],1);
    part_type_life(particle[11],60,60);
    emitter[11] = part_emitter_create(Sys[11]);
    
    prt[11]++;
}

///12. Holy Sword

if prt[12]==0 {
    Sys12 = part_system_create();
    particle12 = part_type_create();
    part_type_shape(particle12,pt_shape_flare);
    part_type_size(particle12,0.40,0.40,0.02,0);
    part_type_scale(particle12,1,1);
    part_type_color1(particle12,16777215);
    part_type_alpha2(particle12,1,0);
    //part_type_speed(particle12,0.40,1,0,0);
    part_type_direction(particle12,0,359,0,0);
    //part_type_gravity(particle12,0.04,90);
    part_type_orientation(particle12,0,0,0,0,1);
    part_type_blend(particle12,1);
    part_type_life(particle12,15,20);
    emitter12 = part_emitter_create(Sys12);
    
    prt[12]++;
}

///13. Shadow/Light Effect

if prt[13]==0 {
    Sys[13]=part_system_create();
    particle[13] = part_type_create();
    part_type_shape(particle[13],pt_shape_flare);
    part_type_size(particle[13],0.10,0.10,0,0);
    part_type_scale(particle[13],7,7);
    part_type_color1(particle[13],16777215);
    part_type_alpha2(particle[13],0.50,0);
    part_type_speed(particle[13],0.60,0.60,0,0);
    part_type_direction(particle[13],0,359,0,0);
    part_type_gravity(particle[13],0.04,90);
    part_type_orientation(particle[13],0,0,0,0,1);
    part_type_blend(particle[13],1);
    part_type_life(particle[13],30,35);
    emitter[13] = part_emitter_create(Sys[13]);
    
    prt[13]++;
}

///14. Holy&Shadow_Destroy Effect
//Used: obj_fireball

if prt[14]==0 {
    Sys[14]=part_system_create();
    particle[14] = part_type_create();
    part_system_depth(Sys[14],-10)
    part_type_shape(particle[14],pt_shape_sphere);
    part_type_size(particle[14],0.80,0.80,-0.01,0);
    part_type_scale(particle[14],0.60,0.60);
    part_type_color1(particle[14],16777215);
    part_type_alpha3(particle[14],1,0,0);
    part_type_speed(particle[14],2,3,-0.08,0);
    part_type_direction(particle[14],0,359,0,0);
    part_type_gravity(particle[14],0,270);
    part_type_orientation(particle[14],0,0,0,0,1);
    part_type_blend(particle[14],1);
    part_type_life(particle[14],30,60);
    emitter[14] = part_emitter_create(Sys[14]);

    prt[14]++;
}

/*
part_emitter_region(Sys[14],emitter[14],other.x,other.x,other.y,other.y,ps_shape_ellipse,1);
part_emitter_burst(Sys[14],emitter[14],particle[14],30);
*/

/* */
///15. Shadow Field Effect
//Used: tin_boss4d

if prt[15]==0 {
    Sys[15]=part_system_create();
    particle[15] = part_type_create();
    part_system_depth(Sys[15],-10);
    part_type_shape(particle[15],pt_shape_sphere);
    part_type_size(particle[15],0.10,0.10,0,0);
    part_type_scale(particle[15],4,5);
    part_type_color1(particle[15],c_black);
    part_type_alpha2(particle[15],0.6,0);
    part_type_speed(particle[15],0.5,1.3,0,0);
    part_type_direction(particle[15],0,359,0.03,0);
    part_type_gravity(particle[15],0.01,90);
    part_type_orientation(particle[15],0,0,0,0,1);
    part_type_blend(particle[15],0);
    part_type_life(particle[15],60,60);
    emitter[15] = part_emitter_create(Sys[15]);
    prt[15]++;
}

/*
part_emitter_region(Sys[15],emitter[15],-371,371,-10,10,1,0);
part_emitter_stream(Sys[15],emitter[15],particle[15],10);
*/

/* */
///16. Shadow Check
//Used: tin_boss4d

if prt[16]==0 {
    Sys[16]=part_system_create();
    particle[16] = part_type_create();
    part_system_depth(Sys[16],-10);
    part_type_shape(particle[16],pt_shape_sphere);
    part_type_size(particle[16],0.10,0.10,0,0);
    part_type_scale(particle[16],3,1.5);
    part_type_color1(particle[16],723723);
    part_type_alpha3(particle[16],0,1,0);
    //part_type_speed(particle[16],3,5,0,0);
    part_type_direction(particle[16],270,270,0,0);
    part_type_gravity(particle[16],0.50,90);
    part_type_orientation(particle[16],0,0,0,0,1);
    part_type_blend(particle[16],0);
    part_type_life(particle[16],15,25);
    emitter[16] = part_emitter_create(Sys[16]);
    
    prt[16]++;
}
/*
    part_emitter_region(Sys[16],emitter[16],10,-10,10,-10,1,1);
    part_emitter_stream(Sys[16],emitter[16],particle[16],10);
*/

/* */
///17. Shadow Ora Effect
//Used: obj_reaper

if prt[17]==0 {
    Sys[17]=part_system_create();
    particle[17] = part_type_create();
    part_system_depth(Sys[17],-15);
    part_type_shape(particle[17],pt_shape_sphere);
    part_type_size(particle[17],0.10,0.10,0,0);
    part_type_scale(particle[17],4,4);
    part_type_color1(particle[17],c_black);
    part_type_alpha2(particle[17],0.5,0);
    part_type_speed(particle[17],0.3,0.3,0,0);
    part_type_direction(particle[17],0,359,0,0);
    part_type_gravity(particle[17],0.20,90);
    part_type_orientation(particle[17],0,0,0,0,1);
    part_type_blend(particle[17],0);
    part_type_life(particle[17],60,60);
    emitter[17] = part_emitter_create(Sys[17]);
    prt[17]++;
}


/*
    part_emitter_region(Sys[17],emitter[17],-37,37,54,-54,1,0);
    part_emitter_stream(Sys[17],emitter[17],particle[17],3);
*/

/* */
///18. Holy Burn effect
//Used: obj_reaper

if prt[18]==0 {
    Sys[18]=part_system_create();
    particle[18] = part_type_create();
    part_system_depth(Sys[18],-15);
    part_type_shape(particle[18],pt_shape_sphere);
    part_type_size(particle[18],0.1,0.1,0,0);
    part_type_scale(particle[18],4,4);
    part_type_color1(particle[18],16777215);
    part_type_alpha2(particle[18],1,0);
    part_type_speed(particle[18],1,3,0,0);
    part_type_direction(particle[18],60,120,0,0);
    part_type_gravity(particle[18],0.1,90);
    part_type_orientation(particle[18],0,0,0,0,1);
    part_type_blend(particle[18],1);
    part_type_life(particle[18],40,60);
    emitter[18] = part_emitter_create(Sys[18]);
    
    prt[18]++;
}

/*
    part_emitter_region(Sys[18],emitter[18],x,x,y,y,ps_shape_ellipse,1);
    part_emitter_stream(Sys[18],emitter[18],particle[18],30);
*/

/* */
///19. Dynamic Blast Effect


if prt[19]==0 {
    Sys[19]=part_system_create();
    particle[19] = part_type_create();
    part_system_depth(Sys[19],-1000);
    part_type_shape(particle[19],pt_shape_flare);
    part_type_size(particle[19],0.10,0.10,0,0);
    part_type_scale(particle[19],32,32);
    part_type_color3(particle[19],16777215,6986751,3947775);
    part_type_alpha3(particle[19],1,0.70,0);
    part_type_speed(particle[19],4,16,0,0);
    part_type_direction(particle[19],-90,90,0,0);
    part_type_gravity(particle[19],0,270);
    part_type_orientation(particle[19],0,0,0,0,1);
    part_type_blend(particle[19],1);
    part_type_life(particle[19],90,120);
    emitter[19] = part_emitter_create(Sys[19]);

    prt[19]++;
}

/*
    part_emitter_region(Sys[19],emitter[19],32,-32,33,-33,1,1);
    part_emitter_burst(Sys[19],emitter[19],particle[19],30);
*/

/* */
///20. All Burn

if prt[20]==0 {
    Sys[20]=part_system_create();
    particle[20] = part_type_create();
    part_type_shape(particle[20],pt_shape_sphere);
    part_type_size(particle[20],0.10,0.10,0,0);
    part_type_scale(particle[20],8,8);
    part_type_color3(particle[20],2258431,2377215,255);
    part_type_alpha2(particle[20],0.70,0);
    part_type_speed(particle[20],1,1.50,0,0);
    part_type_direction(particle[20],45,135,0,0);
    part_type_gravity(particle[20],0.12,90);
    part_type_orientation(particle[20],0,0,0,0,1);
    part_type_blend(particle[20],1);
    part_type_life(particle[20],40,80);
    emitter[20] = part_emitter_create(Sys[20]);


    prt[20]++;
}
/*
    part_emitter_region(Sys[20],emitter[20],-400,400,0,50,0,0);
    part_emitter_stream(Sys[20],emitter[20],particle[20],18);
*/


/* */
///21. Witch Aura

if prt[21]==0 {
    Sys[21]=part_system_create();
    particle[21] = part_type_create();
    part_type_shape(particle[21],pt_shape_sphere);
    part_type_size(particle[21],1,1,-0.01,0);
    part_type_scale(particle[21],1,0.50);
    part_type_color3(particle[21],16711680,8388608,255);
    part_type_alpha3(particle[21],0.50,0,0.10);
    part_type_speed(particle[21],2.50,2.50,-0.01,0);
    part_type_direction(particle[21],0,359,0,0);
    part_type_gravity(particle[21],0,270);
    part_type_orientation(particle[21],0,5,3,0,1);
    part_type_blend(particle[21],1);
    part_type_life(particle[21],60,60);
    emitter[21] = part_emitter_create(Sys[21]);

    prt[21]++;
}
/*
    part_emitter_region(Sname,emitter[21],x,x,y,y,ps_shape_ellipse,1);
    part_emitter_burst(Sname,emitter[21],particle[21],5);
*/

/* */
///22. aqua spread parttern

if prt[22]==0 {
    Sys[22]=part_system_create();
    particle[22] = part_type_create();
    part_type_shape(particle[22],pt_shape_sphere);
    part_type_size(particle[22],0.10,0.10,0,0);
    part_type_scale(particle[22],1.5,1.5);
    part_type_color1(particle[22],8388608);
    part_type_alpha2(particle[22],0.8,0);
    part_type_speed(particle[22],0,0,0,0);
    part_type_direction(particle[22],0,359,0,0);
    part_type_gravity(particle[22],0.10,90);
    part_type_orientation(particle[22],0,0,0,0,1);
    part_type_blend(particle[22],1);
    part_type_life(particle[22],30,50);
    emitter[22] = part_emitter_create(Sys[22]);
}

/*
if prt[22]==0 {
    Sys[22]=part_system_create();
    particle[22] = part_type_create();
    part_type_shape(particle[21],pt_shape_sphere);
    part_type_size(particle[22],0.10,0.10,0,0);
    part_type_scale(particle[22],3,3);
    part_type_color2(particle[22],16744576,16711680);
    part_type_alpha2(particle[22],1,0);
    part_type_speed(particle[22],0,0,0,0);
    part_type_direction(particle[22],235,305,0,0);
    part_type_gravity(particle[22],0.03,90);
    part_type_orientation(particle[22],0,0,0,0,1);
    part_type_blend(particle[22],0);
    part_type_life(particle[22],60,60);
    emitter[22] = part_emitter_create(Sys[22]);
}
*/
/*
part_emitter_region(Sys[22],emitter1,21,-21,18,-18,1,1);
part_emitter_burst(Sys[22],emitter1,particle[22],1);
*/

/* */
///23. Dark effect

if prt[23]==0 {
    Sys[23]=part_system_create();
    particle[23] = part_type_create();
    part_system_depth(Sys[23],0);
    part_type_shape(particle[23],pt_shape_sphere);
    part_type_size(particle[23],0.10,0.10,0,0);
    part_type_scale(particle[23],3,3);
    part_type_color3(particle[23],4194368,0,8388736);
    part_type_alpha3(particle[23],1,1,0);
    part_type_speed(particle[23],0.5,1,0,0);
    part_type_direction(particle[23],0,359,4,1);
    part_type_gravity(particle[23],0,270);
    part_type_orientation(particle[23],0,0,0,0,1);
    part_type_blend(particle[23],0);
    part_type_life(particle[23],60,60);
    emitter[23] = part_emitter_create(Sys[23]);
}
/*
    part_emitter_region(Sys[23],emitter1,x,x,y,y,ps_shape_ellipse,1);
    part_emitter_stream(Sys[23],emitter1,particle[23],5);
*/


/* */
///24. aqua-light effect
//used: tin_boss5c
if prt[24]==0 {
    Sys[24]=part_system_create();
    particle[24] = part_type_create();
    part_type_shape(particle[24],pt_shape_sphere);
    part_type_size(particle[24],0.10,0.10,0,0);
    part_type_scale(particle[24],2,2);
    part_type_color2(particle[24],16726329,4194304);
    part_type_alpha2(particle[24],1,0);
    part_type_speed(particle[24],1,1,0,0);
    part_type_direction(particle[24],0,359,0,0);
    part_type_gravity(particle[24],0,270);
    part_type_orientation(particle[24],0,0,0,0,1);
    part_type_blend(particle[24],1);
    part_type_life(particle[24],10,10);
    emitter[24] = part_emitter_create(Sys[24]);
}


/*
part_emitter_region(Sys[24],emitter[24],x,x,y,y,ps_shape_ellipse,1);
part_emitter_stream(Sys[24],emitter[24],particle[24],5);
*/

/* */
///25. water-dust particle
if prt[25]==0 {
    Sys[25]=part_system_create();
    particle[25] = part_type_create();
    part_type_shape(particle[25],pt_shape_sphere);
    part_type_size(particle[25],0.10,0.10,0,0);
    part_type_scale(particle[25],3,3);
    part_type_color2(particle[25],8388608,16776960);
    part_type_alpha2(particle[25],1,0);
    part_type_speed(particle[25],6,10,-0.10,0);
    part_type_direction(particle[25],0,359,0,0);
    part_type_gravity(particle[25],0,270);
    part_type_orientation(particle[25],0,0,0,0,1);
    part_type_blend(particle[25],1);
    part_type_life(particle[25],60,60);
    emitter[25] = part_emitter_create(Sys[25]);
}

/*
part_emitter_region(Sys[25],emitter[25],x,x,y,y,ps_shape_ellipse,1);
part_emitter_burst(Sys[25],emitter[25],particle[25],30);
*/

/* */
///26. Dark effect2

if prt[26]==0 {
    Sys[26]=part_system_create();
    particle[26] = part_type_create();
    part_system_depth(Sys[26],-10);
    part_type_shape(particle[26],pt_shape_sphere);
    part_type_size(particle[26],0.10,0.10,0,0);
    part_type_scale(particle[26],3,3);
    part_type_color3(particle[26],4194368,0,8388736);
    part_type_alpha2(particle[26],0.3,0);
    part_type_speed(particle[26],0.1,0.3,0,0);
    part_type_direction(particle[26],0,359,4,1);
    part_type_gravity(particle[26],0,270);
    part_type_orientation(particle[26],0,0,0,0,1);
    part_type_blend(particle[26],0);
    part_type_life(particle[26],10,10);
    emitter[26] = part_emitter_create(Sys[26]);
}
/*
    part_emitter_region(Sys[26],emitter1,x,x,y,y,ps_shape_ellipse,1);
    part_emitter_stream(Sys[26],emitter1,particle[26],5);
*/


/* */
///27. darkmagic

if prt[27]==0 {
    Sys[27]=part_system_create();
    particle[27] = part_type_create();
    part_type_shape(particle[27],pt_shape_sphere);
    part_type_size(particle[27],0.10,0.10,0,0);
    part_type_scale(particle[27],2,2);
    part_type_color3(particle[27],8388736,0,4194368);
    part_type_alpha2(particle[27],1,0);
    part_type_speed(particle[27],0,0.30,0,0);
    part_type_direction(particle[27],0,359,0,0);
    part_type_gravity(particle[27],0,270);
    part_type_orientation(particle[27],0,0,0,0,1);
    part_type_blend(particle[27],0);
    part_type_life(particle[27],30,50);
    emitter[27] = part_emitter_create(Sys[27]);
}

/*
    part_emitter_region(Sys[27],emitter[27],10,-10,10,-10,1,1);
    part_emitter_burst(Sys[27],emitter[27],particle[27],1);
*/

/* */
///28. bubble
if prt[28]==0 {
    Sys[28]=part_system_create();
    particle[28] = part_type_create();
    part_type_shape(particle[28],spr_waterball);
    part_type_size(particle[28],0.10,0.10,0,0);
    part_type_scale(particle[28],0.3,0.3);
    part_type_color1(particle[28],255);
    part_type_alpha2(particle[28],1,0);
    part_type_speed(particle[28],0,0,0,0);
    part_type_direction(particle[28],0,359,0,0);
    part_type_gravity(particle[28],0.05,90);
    part_type_orientation(particle[28],0,0,0,0,1);
    part_type_blend(particle[28],1);
    part_type_life(particle[28],60,60);
    emitter[28] = part_emitter_create(Sys[28]);
}

/*
part_emitter_region(Sys[28],emitter[28],33,-33,62,-62,1,1);
part_emitter_burst(Sys[28],emitter[28],particle[28],5);
*/

/* */
///29. Torch
if prt[29]==0 {
    Sys[29]=part_system_create();
    particle[29] = part_type_create();
    part_type_shape(particle[29],pt_shape_disk);
    part_type_size(particle[29],0.10,0.10,0,0);
    part_type_scale(particle[29],1,1);
    part_type_color2(particle[29],33023,255);
    part_type_alpha2(particle[29],1,0);
    part_type_speed(particle[29],0.50,1.50,0,0);
    part_type_direction(particle[29],90,90,0,0);
    part_type_gravity(particle[29],0,270);
    part_type_orientation(particle[29],0,0,0,0,1);
    part_type_blend(particle[29],1);
    part_type_life(particle[29],30,30);
    emitter[29] = part_emitter_create(Sys[29]);
}

/*
part_emitter_region(Sys[29],emitter[29],x+10,x-10,y+10,y-10,1,1);
part_emitter_burst(Sys[29],emitter[29],particle[29],1);
*/


/* */
///30. golem destroy
if prt[30]==0 {
    Sys[30]=part_system_create();
    particle[30] = part_type_create();
    part_type_shape(particle[30],pt_shape_square);
    part_type_size(particle[30],0.10,0.10,0,0);
    part_type_scale(particle[30],1,1);
    part_type_color2(particle[30],22359,16512);
    part_type_alpha2(particle[30],0.80,0);
    part_type_speed(particle[30],0.30,1,0,0);
    part_type_direction(particle[30],0,359,0,0);
    part_type_gravity(particle[30],0,270);
    part_type_orientation(particle[30],0,0,0,0,1);
    part_type_blend(particle[30],0);
    part_type_life(particle[30],20,20);
    emitter[30] = part_emitter_create(Sys[30]);
}

/*
    part_emitter_region(Sys[30],emitter[30],18,-18,18,-18,1,1);
    part_emitter_stream(Sys[30],emitter[30],particle[30],6);
    */

/* */
///31. Meteo
if prt[31]==0 {
    Sys[31]=part_system_create();
    particle[31] = part_type_create();
    part_type_shape(particle[31],pt_shape_sphere);
    part_type_size(particle[31],0.80,0.80,-0.01,0);
    part_type_scale(particle[31],1.20,1.20);
    part_type_color3(particle[31],8454143,255,8421504);
    part_type_alpha3(particle[31],0.70,0.30,0);
    part_type_speed(particle[31],2,6,0,0);
    part_type_direction(particle[31],45,90,0,0);
    part_type_gravity(particle[31],0.30,70);
    part_type_orientation(particle[31],0,0,0,0,1);
    part_type_blend(particle[31],1);
    part_type_life(particle[31],60,60);
    emitter[31] = part_emitter_create(Sys[31]);
}


/*
    part_emitter_region(Sys[31],emitter[31],26,-26,24,-24,1,0);
    part_emitter_burst(Sys[31],emitter[31],particle[31],5);
*/

/* */
///32. burst
if prt[32]==0 {
    Sys[32]=part_system_create();
    particle[32] = part_type_create();
    part_system_depth(Sys[32],-30);
    part_type_shape(particle[32],pt_shape_sphere);
    part_type_size(particle[32],1,1,-0.01,0);
    part_type_scale(particle[32],1.20,1.20);
    part_type_color3(particle[32],8454143,255,255);
    part_type_alpha3(particle[32],0.70,0.20,0);
    part_type_speed(particle[32],5.80,6,-0.20,0);
    part_type_direction(particle[32],0,359,0,0);
    part_type_orientation(particle[32],0,0,0,0,1);
    part_type_blend(particle[32],1);
    part_type_life(particle[32],40,40);
    emitter[32] = part_emitter_create(Sys[32]);
}
/*
part_emitter_region(Sys[32],emitter[32],-16,16,14,-14,1,0);
part_emitter_stream(Sys[32],emitter[32],particle[32],5);

/* */
///33. noru
if prt[33]==0 {
    Sys[33]=part_system_create();
    particle[33] = part_type_create();
    part_system_depth(Sys[33],-12);
    part_type_shape(particle[33],pt_shape_sphere);
    part_type_size(particle[33],0.80,0.80,-0.01,0);
    part_type_scale(particle[33],0.60,0.60);
    part_type_color2(particle[33],16512,4227200);
    part_type_alpha2(particle[33],1,0);
    part_type_speed(particle[33],0.20,0.60,0,0);
    part_type_direction(particle[33],0,359,0,0);
    part_type_gravity(particle[33],0.10,270);
    part_type_orientation(particle[33],0,0,0,0,1);
    part_type_blend(particle[33],0);
    part_type_life(particle[33],30,30);
    emitter[33] = part_emitter_create(Sys[33]);
}


/*
    part_emitter_region(Sys[33],emitter[33],46,-46,45,-45,0,1);
    part_emitter_stream(Sys[33],emitter[33],particle[33],20);
*/

/* */
///34. blast
if prt[34]==0 {
    Sys[34]=part_system_create();
    particle[34] = part_type_create();
    part_type_shape(particle[34],pt_shape_sphere);
    part_type_size(particle[34],1,1,-0.02,0);
    part_type_scale(particle[34],1,1);
    part_type_color2(particle[34],16512,4227200);
    part_type_alpha2(particle[34],1,0);
    part_type_speed(particle[34],1,1,0,0);
    part_type_direction(particle[34],0,359,0,0);
    part_type_gravity(particle[34],0,270);
    part_type_orientation(particle[34],0,0,0,0,1);
    part_type_blend(particle[34],1);
    part_type_life(particle[34],15,30);
    emitter[34] = part_emitter_create(Sys[34]);
}


/*
    part_emitter_region(Sys[34],emitter[34],29,-29,28,-28,1,0);
    part_emitter_stream(Sys[34],emitter[34],particle[34],12);
*/

/* */
///35. renew ignis flameball
if prt[35]==0 {
    Sys[35]=part_system_create();
    particle[35] = part_type_create();
    part_type_shape(particle[35],pt_shape_sphere);
    part_type_size(particle[35],1,1,-0.01,0);
    part_type_scale(particle[35],0.50,0.50);
    part_type_color2(particle[35],16512,4227200);
    part_type_alpha2(particle[35],1,0);
    part_type_speed(particle[35],0.40,0.40,0,0);
    part_type_direction(particle[35],0,359,0,0);
    part_type_gravity(particle[35],0,270);
    part_type_orientation(particle[35],0,0,0,0,1);
    part_type_blend(particle[35],1);
    part_type_life(particle[35],15,30);
    emitter[35] = part_emitter_create(Sys[35]);
}

/*
    part_emitter_region(Sys[35],emitter[35],14,-14,16,-16,1,1);
    part_emitter_stream(Sys[35],emitter[35],particle[35],15);
*/

/* */
///36. White aura
if prt[36]==0 {
    Sys[36]=part_system_create();
    particle[36] = part_type_create();
    part_system_depth(Sys[36],-12);
    part_type_shape(particle[36],pt_shape_sphere);
    part_type_size(particle[36],0.10,0.10,0,0);
    part_type_scale(particle[36],4,4);
    part_type_color1(particle[36],16777215);
    part_type_alpha2(particle[36],1,0);
    part_type_speed(particle[36],2,2,0,0);
    part_type_direction(particle[36],80,100,0,0);
    part_type_gravity(particle[36],0.2,90);
    part_type_orientation(particle[36],0,0,0,0,1);
    part_type_blend(particle[36],0);
    part_type_life(particle[36],40,60);
    emitter[36] = part_emitter_create(Sys[36]);
}


/*
    part_emitter_region(Sys[36],emitter[36],56,-56,30,-30,1,1);
    part_emitter_stream(Sys[36],emitter[36],particle[36],10);
*/

/* */
///37. disable hmore
if prt[37]==0 {
    Sys[37]=part_system_create();
    particle[37] = part_type_create();
    part_type_shape(particle[37],pt_shape_sphere);
    part_type_size(particle[37],0.10,0.10,0,0);
    part_type_scale(particle[37],2,2);
    part_type_color2(particle[37],8421631,255);
    part_type_alpha2(particle[37],1,0);
    part_type_speed(particle[37],0,0,0,0);
    part_type_direction(particle[37],0,359,0,0);
    part_type_gravity(particle[37],0.07,90);
    part_type_orientation(particle[37],0,0,0,0,1);
    part_type_blend(particle[37],0);
    part_type_life(particle[37],30,30);
    emitter[37] = part_emitter_create(Sys[37]);
}


/*
    part_emitter_region(Sys[37],emitter[37],12,-12,12,-12,1,1);
    part_emitter_burst(Sys[37],emitter[37],particle[37],5);
*/

/* */
///38. red effect
if prt[38]==0 {
    Sys[38]=part_system_create();
    particle[38] = part_type_create();
    part_type_shape(particle[38],pt_shape_sphere);
    part_type_size(particle[38],0.60,0.60,-0.01,0);
    part_type_scale(particle[38],1,1);
    part_type_color1(particle[38],255);
    part_type_alpha1(particle[38],1);
    part_type_speed(particle[38],0,0,0,0);
    part_type_direction(particle[38],0,359,0,0);
    part_type_gravity(particle[38],0,270);
    part_type_orientation(particle[38],0,0,0,0,1);
    part_type_blend(particle[38],1);
    part_type_life(particle[38],50,50);
    emitter[38] = part_emitter_create(Sys[38]);
}

/*
    part_emitter_region(Sys[38],emitter[38],x,x,y,y,ps_shape_ellipse,1);
    part_emitter_burst(Sys[38],emitter[38],particle[38],1);
*/

/* */
///39. water dive effect

if prt[39]==0 {
    Sys[39]=part_system_create();
    particle[39] = part_type_create();
    part_system_depth(Sys[39],-12);
    part_type_shape(particle[39],pt_shape_smoke);
    part_type_size(particle[39],0.10,0.10,0,0);
    part_type_scale(particle[39],1.2,1.2);
    part_type_color1(particle[39],16711680);
    part_type_alpha1(particle[39],0.60);
    part_type_speed(particle[39],2,3,0,0);
    part_type_direction(particle[39],0,359,0,0);
    part_type_gravity(particle[39],0.3,270);
    part_type_orientation(particle[39],0,0,0,0,1);
    part_type_blend(particle[39],0);
    part_type_life(particle[39],30,30);
    emitter[39] = part_emitter_create(Sys[39]);
}

/*
    part_emitter_region(Sys[39],emitter[39],11,-11,8,-8,1,1);
    part_emitter_burst(Sys[39],emitter[39],particle[39],8);
*/

/* */
///40. Guy Effect
if prt[40]==0 {
    Sys[40]=part_system_create();
    particle[40] = part_type_create();
    part_type_shape(particle[40],pt_shape_disk);
    part_type_size(particle[40],0.10,0.10,0,0);
    part_type_scale(particle[40],1,1);
    part_type_color1(particle[40],16777215);
    part_type_alpha2(particle[40],0.50,0);
    part_type_speed(particle[40],1,1,0,0);
    part_type_direction(particle[40],90-30,90+30,0,0);
    part_type_gravity(particle[40],0.12,90);
    part_type_orientation(particle[40],0,0,0,0,1);
    part_type_blend(particle[40],1);
    part_type_life(particle[40],20,20);
    emitter[40] = part_emitter_create(Sys[40]);
}

/*
part_emitter_region(Sys[40],emitter[40],13,-13,3,-3,1,0);
part_emitter_stream(Sys[40],emitter[40],particle[40],1);
*/

/* */
///41. toGuy
if prt[41]==0 {
    Sys[41]=part_system_create();
    particle[41] = part_type_create(); 
    part_system_depth(Sys[41],-15)
    part_type_shape(particle[41],pt_shape_sphere);
    part_type_size(particle[41],0.10,0.10,0,0);
    part_type_scale(particle[41],3,3);
    part_type_color1(particle[41],16777215);
    part_type_alpha2(particle[41],1,0);
    part_type_speed(particle[41],0.50,0.70,0,0);
    part_type_direction(particle[41],90,90,0,0);
    part_type_gravity(particle[41],0.05,90);
    part_type_orientation(particle[41],0,0,0,0,1);
    part_type_blend(particle[41],1);
    part_type_life(particle[41],50,100);
    emitter[41] = part_emitter_create(Sys[41]);
}

/*
part_emitter_region(Sys[41],emitter[41],131,-131,-8,8,1,0);
part_emitter_stream(Sys[41],emitter[41],particle[41],5);
*/

/* */
///42. vampire
if prt[42]==0 {
    Sys[42]=part_system_create();
    particle[42] = part_type_create();
    part_system_depth(Sys[42],-16);
    part_type_shape(particle[42],pt_shape_flare);
    part_type_size(particle[42],0.10,0.10,0,0);
    part_type_scale(particle[42],6,6);
    part_type_color1(particle[42],0);
    part_type_alpha2(particle[42],1,0);
    part_type_speed(particle[42],0.2,0.6,0,0);
    part_type_direction(particle[42],0,359,0,0);
    part_type_gravity(particle[42],0.10,90);
    part_type_orientation(particle[42],0,0,0,0,1);
    part_type_blend(particle[42],0);
    part_type_life(particle[42],30,60);
    emitter[42] = part_emitter_create(Sys[42]);
}

/*
    part_emitter_region(Sys[42],emitter[42],45,-45,88,-88,1,0);
    part_emitter_stream(Sys[42],emitter[42],particle[42],1);
*/

/* */
///43. Vampire Blood
if prt[43]==0 {
    Sys[43]=part_system_create();
    particle[43] = part_type_create();
    part_system_depth(Sys[43],-20);
    part_type_shape(particle[43],pt_shape_sphere);
    part_type_size(particle[43],0.10,0.10,0,0);
    part_type_scale(particle[43],4,4);
    part_type_color1(particle[43],128);
    part_type_alpha1(particle[43],0.5);
    part_type_speed(particle[43],0.30,0.50,0,0);
    part_type_direction(particle[43],0,359,0,0);
    part_type_gravity(particle[43],0.2,90);
    part_type_orientation(particle[43],0,0,0,0,1);
    part_type_blend(particle[43],0);
    part_type_life(particle[43],20,40);
    emitter[43] = part_emitter_create(Sys[43]);
}

/*
    part_emitter_region(Sys[43],emitter[43],39,-39,68,-68,1,0);
    part_emitter_burst(Sys[43],emitter[43],particle[43],12);
*/

/* */
///44. Stage5 boss field
if prt[44]==0 {
    Sys[44]=part_system_create();
    particle[44] = part_type_create();
    part_system_depth(Sys[44],1);
    part_type_shape(particle[44],pt_shape_sphere);
    part_type_size(particle[44],0.10,0.30,0,0);
    part_type_scale(particle[44],4,10);
    part_type_color1(particle[44],make_colour_rgb(187,0,0));
    part_type_alpha2(particle[44],0.8,0);
    part_type_speed(particle[44],1,2,0,0);
    part_type_direction(particle[44],0,359,0,0);
    part_type_gravity(particle[44],0.06,90);
    part_type_orientation(particle[44],0,0,0,0,1);
    part_type_blend(particle[44],0);
    part_type_life(particle[44],60,60);
    emitter[44] = part_emitter_create(Sys[44]);
}

/* */
///45. Curse effect
if prt[45]==0 {
    Sys[45]=part_system_create();
    particle[45] = part_type_create();
    part_system_depth(Sys[45],-30);
    part_type_shape(particle[45],pt_shape_disk);
    part_type_size(particle[45],0.10,0.10,0,0);
    part_type_scale(particle[45],1,1);
    part_type_color1(particle[45],3473461);
    part_type_alpha2(particle[45],1,0);
    part_type_speed(particle[45],0,0,0,0);
    part_type_direction(particle[45],0,359,0,0);
    part_type_gravity(particle[45],0.30,90);
    part_type_orientation(particle[45],0,0,0,0,1);
    part_type_blend(particle[45],1);
    part_type_life(particle[45],20,20);
    emitter[45] = part_emitter_create(Sys[45]);
}

/*
part_emitter_region(Sys[45],emitter[45],10,-10,10,-10,2,1);
part_emitter_burst(Sys[45],emitter[45],particle[45],10);
*/

/* */
///46. Vampire Dark effect
if prt[46]==0 {
    Sys[46]=part_system_create();
    particle[46] = part_type_create();
    part_system_depth(Sys[46],-30);
    part_type_shape(particle[46],pt_shape_sphere);
    part_type_size(particle[46],0.10,0.10,0,0);
    part_type_scale(particle[46],4,4);
    part_type_color1(particle[46],0);
    part_type_alpha2(particle[46],1,0);
    part_type_speed(particle[46],1,2,0,0);
    part_type_direction(particle[46],0,359,0,0);
    part_type_gravity(particle[46],0,270);
    part_type_orientation(particle[46],0,0,0,0,1);
    part_type_blend(particle[46],0);
    part_type_life(particle[46],30,40);
    emitter[46] = part_emitter_create(Sys[46]);
}

/*

part_emitter_region(Sys[46],emitter[46],14,-14,12,-12,1,1);
part_emitter_stream(Sys[46],emitter[46],particle[46],5);
*/

/* */
///47. Fire Rain
if prt[47]==0 {
    Sys[47]=part_system_create();
    particle[47] = part_type_create();
    part_system_depth(Sys[47],-20);
    part_type_shape(particle[47],pt_shape_sphere);
    part_type_size(particle[47],0.10,0.10,0,0);
    part_type_scale(particle[47],1.50,1.50);
    part_type_color2(particle[47],4227327,255);
    part_type_alpha2(particle[47],1,0);
    part_type_direction(particle[47],0,359,0,0);
    part_type_gravity(particle[47],0.07,90);
    part_type_orientation(particle[47],0,0,0,0,1);
    part_type_blend(particle[47],1);
    part_type_life(particle[47],30,50);
    emitter[47] = part_emitter_create(Sys[47]);
}
/*
part_emitter_region(Sys[47],emitter[47],14,-14,14,-14,1,1);
part_emitter_burst(Sys[47],emitter[47],particle[47],5);
*/

/* */
///48. Dimension Phase1 Effect
if prt[48]==0 {
    Sys[48]= part_system_create();
    particle[48] = part_type_create();
    part_type_shape(particle[48],pt_shape_sphere);
    part_type_size(particle[48],0.10,0.10,0,0);
    part_type_scale(particle[48],5,5);
    part_type_color1(particle[48],c_black); //1776411
    part_type_alpha2(particle[48],1,0);
    part_type_speed(particle[48],0.50,0.80,0,0);
    part_type_direction(particle[48],0,359,0,0);
    part_type_gravity(particle[48],0,270);
    part_type_orientation(particle[48],0,0,0,0,1);
    part_type_blend(particle[48],0);
    part_type_life(particle[48],40,40);
    emitter[48] = part_emitter_create(Sys[48]);
}

/* */
///49. Blackball Effect
Sys[49] = part_system_create();

particle[49] = part_type_create();
part_type_shape(particle[49],pt_shape_sphere);
part_type_size(particle[49],0.15,0.15,-0.005,0);
part_type_scale(particle[49],3,3);
part_type_color1(particle[49],c_black);
part_type_alpha2(particle[49],1,0);
part_type_speed(particle[49],0.40,0.40,0,0);
part_type_direction(particle[49],0,359,0,0);
part_type_orientation(particle[49],0,0,0,0,1);
part_type_blend(particle[49],0);
part_type_life(particle[49],40,60);
emitter[49] = part_emitter_create(Sys[49]);

/*
part_emitter_region(Sys[49],emitter[49],400,408,300,308,1,0);
part_emitter_stream(Sys[49],emitter[49],particle[49],5);

/* */
///50. Scene black evnet
if prt[50]==0 {
    Sys[50]=part_system_create();
    particle[50] = part_type_create();
    part_system_depth(Sys[50],-30)
    part_type_shape(particle[50],pt_shape_sphere);
    part_type_size(particle[50],0.10,0.10,0,0);
    part_type_scale(particle[50],10,10);
    part_type_color1(particle[50],0);
    part_type_alpha3(particle[50],1,0.7,0);
    part_type_speed(particle[50],0.1,0.1,0,0);
    part_type_direction(particle[50],0,359,0,0);
    part_type_gravity(particle[50],0.15,90);
    part_type_orientation(particle[50],0,0,0,0,1);
    part_type_blend(particle[50],0);
    part_type_life(particle[50],50,100);
    emitter[50] = part_emitter_create(Sys[50]);
}

/*
part_emitter_region(Sys[50],emitter[50],400,-400,32,-32,0,0);
part_emitter_stream(Sys[50],emitter[50],particle[50],10);
*/

/* */
///51. Dimension 1Phase End Event
if prt[51]==0 {
    Sys[51]=part_system_create();
    particle[51] = part_type_create();
    part_type_shape(particle[51],pt_shape_sphere);
    part_type_size(particle[51],0.10,0.10,0,0);
    part_type_scale(particle[51],16,16);
    part_type_color1(particle[51],0);
    part_type_alpha1(particle[51],1);
    part_type_speed(particle[51],12,24,0,0);
    part_type_direction(particle[51],0,359,0,0);
    part_type_gravity(particle[51],0,270);
    part_type_orientation(particle[51],0,0,0,0,1);
    part_type_blend(particle[51],0);
    part_type_life(particle[51],60,60);
    emitter[51] = part_emitter_create(Sys[51]);
}

/*
    part_emitter_region(Sys[51],emitter[51],28,-28,28,-28,1,1);
    part_emitter_stream(Sys[51],emitter[51],particle[51],10);
*/

/* */
///52. Dimensionfade effect
if prt[52]==0 {
    Sys[52]=part_system_create();
    particle[52] = part_type_create();
    part_system_depth(Sys[52],-10);
    part_type_shape(particle[52],pt_shape_sphere);
    part_type_size(particle[52],0.10,0.10,0,0);
    part_type_scale(particle[52],2,2);
    part_type_color1(particle[52],16777215);
    part_type_alpha3(particle[52],1,1,0);
    part_type_speed(particle[52],0,0.10,0,0);
    part_type_direction(particle[52],0,359,0,0);
    part_type_gravity(particle[52],0,270);
    part_type_orientation(particle[52],0,0,0,0,1);
    part_type_blend(particle[52],1);
    part_type_life(particle[52],10,20);
    emitter[52] = part_emitter_create(Sys[52]);
}
/*
    part_emitter_region(Sys[52],emitter[52],14,-14,14,-14,0,0);
    part_emitter_stream(Sys[52],emitter[52],particle[52],1);
*/

/* */
///53. Ending_ignis
if prt[53]==0 { prt[53]++;
    Sys[53]=part_system_create();
    particle[53] = part_type_create();
    part_type_shape(particle[53],pt_shape_sphere);
    part_type_size(particle[53],1.2,1.2,-0.03,0);
    part_type_scale(particle[53],0.20,0.20);
    //part_type_color3(particle[53],255,33023,8421631);
    part_type_color2(particle[53],33023,255);
    part_type_alpha2(particle[53],0.8,0.1);
    part_type_speed(particle[53],0.10,0.20,0,0);
    part_type_direction(particle[53],0,359,0,0);
    part_type_gravity(particle[53],0,270);
    part_type_orientation(particle[53],0,0,0,0,1);
    part_type_blend(particle[53],1);
    part_type_life(particle[53],50,50);
    emitter[53] = part_emitter_create(Sys[53]);
}

/*
    part_emitter_region(Sys[53],emitter[53],4,-4,4,-4,1,1);
    part_emitter_burst(Sys[53],emitter[53],particle[53],5);
*/

/* */
///54. Shadow Field Effect
//Used: tin_boss4d

if prt[54]==0 {
    Sys[54]=part_system_create();
    particle[54] = part_type_create();
    part_system_depth(Sys[54],-10);
    part_type_shape(particle[54],pt_shape_sphere);
    part_type_size(particle[54],0.10,0.10,0,0);
    part_type_scale(particle[54],4,5);
    part_type_color1(particle[54],c_purple);
    part_type_alpha2(particle[54],0.6,0);
    part_type_speed(particle[54],0.5,1.3,0,0);
    part_type_direction(particle[54],0,359,0.03,0);
    part_type_gravity(particle[54],0.02,270);
    part_type_orientation(particle[54],0,0,0,0,1);
    part_type_blend(particle[54],0);
    part_type_life(particle[54],60,60);
    emitter[54] = part_emitter_create(Sys[54]);
    prt[54]++;
}

/*
part_emitter_region(Sys[54],emitter[54],-371,371,-10,10,1,0);
part_emitter_stream(Sys[54],emitter[54],particle[54],10);
*/

/* */
///55. Effect

if prt[55]==0 {
    Sys[55]=part_system_create();
    particle[55] = part_type_create();
    part_system_depth(Sys[55],-10);
    part_type_shape(particle[55],pt_shape_sphere);
    part_type_size(particle[55],0.10,0.10,0,0);
    part_type_scale(particle[55],3,4);
    part_type_color1(particle[55],c_purple);
    part_type_alpha2(particle[55],0.4,0);
    part_type_speed(particle[55],0,0,0,0);
    part_type_direction(particle[55],0,359,0.03,0);
    part_type_gravity(particle[55],0.1,270);
    part_type_orientation(particle[55],0,0,0,0,1);
    part_type_blend(particle[55],0);
    part_type_life(particle[55],60,60);
    emitter[55] = part_emitter_create(Sys[55]);
    prt[55]++;
}

/*
part_emitter_region(Sys[55],emitter[55],-371,371,-10,10,1,0);
part_emitter_stream(Sys[55],emitter[55],particle[55],10);
*/

/* */
///56. socorer disable effect
if prt[56]==0 { prt[56]++;
    Sys[56]=part_system_create();
    particle[56] = part_type_create();
    part_system_depth(Sys[56],-100);
    part_type_shape(particle[56],pt_shape_sphere);
    part_type_size(particle[56],0.10,0.10,0,0);
    part_type_scale(particle[56],3,3);
    part_type_color1(particle[56],6946894);
    part_type_alpha2(particle[56],1,0);
    part_type_speed(particle[56],1,12,-0.30,0);
    part_type_direction(particle[56],-30,210,0,0);
    part_type_gravity(particle[56],0,270);
    part_type_orientation(particle[56],0,0,0,0,1);
    part_type_blend(particle[56],1);
    part_type_life(particle[56],30,60);
    emitter[56] = part_emitter_create(Sys[56]);
}

/*
    part_emitter_region(Sys[56],emitter[56],38,-38,31,-31,1,1);
    part_emitter_stream(Sys[56],emitter[56],particle[56],20);

/* */
///57. socorer death
if prt[57]==0 {
    Sys[57]=part_system_create();
    particle[57] = part_type_create();
    part_type_shape(particle[57],pt_shape_sphere);
    part_type_size(particle[57],0.10,0.10,0,0);
    part_type_scale(particle[57],4,6);
    part_type_color2(particle[57],4194368,0);
    part_type_alpha2(particle[57],1,0);
    part_type_speed(particle[57],3,3,0,0);
    part_type_direction(particle[57],0,359,0,0);
    part_type_gravity(particle[57],0,270);
    part_type_orientation(particle[57],0,0,0,0,1);
    part_type_blend(particle[57],0);
    part_type_life(particle[57],23,23);
    emitter[57] = part_emitter_create(Sys[57]);
}

/*
    part_emitter_region(Sys[57],emitter[57],x,x,y,y,ps_shape_ellipse,1);
    part_emitter_stream(Sys[57],emitter[57],particle[57],10);

/* */
///58. renew fireball
if prt[58]==0 { prt[58]++;
    Sys[58]=part_system_create();
    particle[58] = part_type_create();
    part_system_depth(Sys[58],-15);
    part_type_shape(particle[58],pt_shape_sphere);
    part_type_size(particle[58],1,1,-0.04,0);
    part_type_scale(particle[58],0.3,0.3);
    part_type_color2(particle[58],make_colour_rgb(255,128,0),8454143);
    part_type_alpha2(particle[58],0.8,0.3);
    part_type_speed(particle[58],0.10,0.10,0,0);
    part_type_direction(particle[58],0,359,0,0);
    part_type_gravity(particle[58],0,270);
    part_type_orientation(particle[58],0,0,0,0,1);
    part_type_blend(particle[58],1);
    part_type_life(particle[58],15,20);
    emitter[58] = part_emitter_create(Sys[58]);
}

/*
    part_emitter_region(Sys[58],emitter[58],9,-9,10,-10,1,1);
    part_emitter_burst(Sys[58],emitter[58],particle[58],5);
*/

/* */
///59. Gain Shield effect
if prt[59]==0 {
    Sys[59]=part_system_create();
    particle[59] = part_type_create();
    part_type_shape(particle[59],pt_shape_sphere);
    part_type_size(particle[59],0.10,0.10,0,0);
    part_type_scale(particle[59],6.50,8);
    part_type_color1(particle[59],16777215);
    part_type_alpha3(particle[59],1,1,0);
    part_type_speed(particle[59],6.50,7,-0.3,0);
    part_type_direction(particle[59],0,359,0,0);
    part_type_gravity(particle[59],0,270);
    part_type_orientation(particle[59],0,0,0,0,1);
    part_type_blend(particle[59],1);
    part_type_life(particle[59],25,25);
    emitter[59] = part_emitter_create(Sys[59]);
}

/*
    part_emitter_region(Sys[59],emitter[59],x,x,y,y,ps_shape_ellipse,1);
    part_emitter_stream(Sys[59],emitter[59],particle[59],10);
*/

/* */
///60. Bubble effect

if prt[60]==0 {
    Sys[60]=part_system_create();
    particle[60] = part_type_create();
    //part_type_shape(particle[60],pt_shape_sphere);
    part_type_sprite(particle[60],spr_bubble,0,0,0);
    part_type_size(particle[60],0.5,0.5,0,0);
    part_type_scale(particle[60],1,1);
    part_type_color1(particle[60],8388608);
    part_type_alpha2(particle[60],0.5,0);
    part_type_speed(particle[60],0,0,0,0);
    part_type_direction(particle[60],0,359,0,0);
    part_type_gravity(particle[60],0.10,90);
    part_type_orientation(particle[60],0,0,0,0,1);
    part_type_blend(particle[60],0);
    part_type_life(particle[60],30,50);
    emitter[60] = part_emitter_create(Sys[60]);
}


/* */
///61. Ignis Soul
if prt[61]==0 {
    Sys[61]=part_system_create();
    particle[61] = part_type_create();
    part_type_shape(particle[61],pt_shape_cloud);
    part_type_size(particle[61],0.10,0.10,0,0);
    part_type_scale(particle[61],1.50,1.50);
    part_type_color2(particle[61],87,0);
    part_type_alpha2(particle[61],0.1,0);
    part_type_speed(particle[61],0.15,0.20,0,0);
    part_type_direction(particle[61],0,359,0,0);
    part_type_gravity(particle[61],0.03,90);
    part_type_orientation(particle[61],0,0,0,0,1);
    part_type_blend(particle[61],1);
    part_type_life(particle[61],60,60);
    emitter[61] = part_emitter_create(Sys[61]);
}
/*
part_emitter_region(Sys[61],emitter[61],10,-10,16,-16,1,1);
part_emitter_stream(Sys[61],emitter[61],particle[61],5);
*/

/* */
///62. Karena Soul
if prt[62]==0 {
    Sys[62]=part_system_create();
    particle[62] = part_type_create();
    part_type_shape(particle[62],pt_shape_sphere);
    part_type_size(particle[62],0.10,0.10,0,0);
    part_type_scale(particle[62],1.50,1.50);
    part_type_color2(particle[62],8388736,0);
    part_type_alpha2(particle[62],0.08,0);
    part_type_speed(particle[62],0.15,0.20,0,0);
    part_type_direction(particle[62],0,359,0,0);
    part_type_gravity(particle[62],0.03,90);
    part_type_orientation(particle[62],0,0,0,0,1);
    part_type_blend(particle[62],0);
    part_type_life(particle[62],60,60);
    emitter[62] = part_emitter_create(Sys[62]);
}
/*
part_emitter_region(Sys[62],emitter[62],10,-10,16,-16,1,1);
part_emitter_stream(Sys[62],emitter[62],particle[62],5);
*/

/* */
///63. Aqua Soul
if prt[63]==0 {
    Sys[63]=part_system_create();
    particle[63] = part_type_create();
    part_type_shape(particle[63],pt_shape_cloud);
    part_type_size(particle[63],0.10,0.10,0,0);
    part_type_scale(particle[63],1.50,1.50);
    part_type_color2(particle[63],5701632,0);
    part_type_alpha2(particle[63],0.30,0);
    part_type_speed(particle[63],0.15,0.20,0,0);
    part_type_direction(particle[63],0,359,0,0);
    part_type_gravity(particle[63],0.03,90);
    part_type_orientation(particle[63],0,0,0,0,1);
    part_type_blend(particle[63],1);
    part_type_life(particle[63],60,60);
    emitter[63] = part_emitter_create(Sys[63]);

}
/*
part_emitter_region(Sys[63],emitter[63],10,-10,16,-16,1,1);
part_emitter_stream(Sys[63],emitter[63],particle[63],5);
*/

/* */
///64. Reina Soul
if prt[64]==0 {
    Sys[64]=part_system_create();
    particle[64] = part_type_create();
    part_type_shape(particle[64],pt_shape_cloud);
    part_type_size(particle[64],0.10,0.10,0,0);
    part_type_scale(particle[64],1.50,1.50);
    part_type_color2(particle[64],16744448,0);
    part_type_alpha2(particle[64],0.10,0);
    part_type_speed(particle[64],0.15,0.20,0,0);
    part_type_direction(particle[64],0,359,0,0);
    part_type_gravity(particle[64],0.03,90);
    part_type_orientation(particle[64],0,0,0,0,1);
    part_type_blend(particle[64],1);
    part_type_life(particle[64],60,60);
    emitter[64] = part_emitter_create(Sys[64]);

}
/*
part_emitter_region(Sys[64],emitter[64],10,-10,16,-16,1,1);
part_emitter_stream(Sys[64],emitter[64],particle[64],5);
*/

/* */
///65. Valencia Soul
if prt[65]==0 {
    Sys[65]=part_system_create();
    particle[65] = part_type_create();
    part_type_shape(particle[65],pt_shape_explosion);
    part_type_size(particle[65],0.10,0.10,0,0);
    part_type_scale(particle[65],1.50,1.50);
    part_type_color2(particle[65],128,0);
    part_type_alpha2(particle[65],0.30,0);
    part_type_speed(particle[65],0.15,0.20,0,0);
    part_type_direction(particle[65],0,359,0,0);
    part_type_gravity(particle[65],0.03,90);
    part_type_orientation(particle[65],0,0,0,0,1);
    part_type_blend(particle[65],0);
    part_type_life(particle[65],60,60);
    emitter[65] = part_emitter_create(Sys[65]);
}


/*
    part_emitter_region(Sys[65],emitter[65],10,-10,16,-16,1,1);
    part_emitter_stream(Sys[65],emitter[65],particle[65],5);
*/

/* */
///66. valencia fireball
if prt[66]==0 { prt[66]++;
    Sys[66]=part_system_create();
    particle[66] = part_type_create();
    part_system_depth(Sys[66],-15);
    part_type_shape(particle[66],pt_shape_sphere);
    part_type_size(particle[66],1,1,-0.04,0);
    part_type_scale(particle[66],0.3,0.3);
    part_type_color2(particle[66],make_colour_rgb(255,128,0),8454143);
    part_type_alpha2(particle[66],0.8,0.3);
    part_type_speed(particle[66],0.10,0.10,0,0);
    part_type_direction(particle[66],0,359,0,0);
    part_type_gravity(particle[66],0,270);
    part_type_orientation(particle[66],0,0,0,0,1);
    part_type_blend(particle[66],1);
    part_type_life(particle[66],5,15);
    emitter[66] = part_emitter_create(Sys[66]);
}

/*
    part_emitter_region(Sys[66],emitter[66],9,-9,10,-10,1,1);
    part_emitter_burst(Sys[66],emitter[66],particle[66],5);
*/

/* */
///67. valencia Shadow Field Effect
//Used: tin_boss4d

if prt[67]==0 {
    Sys[67]=part_system_create();
    particle[67] = part_type_create();
    part_system_depth(Sys[67],-10);
    part_type_shape(particle[67],pt_shape_sphere);
    part_type_size(particle[67],0.10,0.10,0,0);
    part_type_scale(particle[67],4,5);
    part_type_color1(particle[67],c_black);
    part_type_alpha2(particle[67],0.4,0);
    part_type_speed(particle[67],0.6,0.7,0,0);
    part_type_direction(particle[67],0,359,0.03,0);
    part_type_gravity(particle[67],0.04,90);
    part_type_orientation(particle[67],0,0,0,0,1);
    part_type_blend(particle[67],0);
    part_type_life(particle[67],60,60);
    emitter[67] = part_emitter_create(Sys[67]);
    prt[67]++;
}

/*
part_emitter_region(Sys[67],emitter[67],-371,371,-10,10,1,0);
part_emitter_stream(Sys[67],emitter[67],particle[67],10);
*/

/* */
/*  */
