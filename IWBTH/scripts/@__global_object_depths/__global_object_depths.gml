// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 0; // sys_init
global.__objectDepths[1] = 0; // sys_TITLE
global.__objectDepths[2] = 0; // object163
global.__objectDepths[3] = -1000; // sys_global
global.__objectDepths[4] = 0; // obj_temp
global.__objectDepths[5] = -100; // sys_lighting
global.__objectDepths[6] = -10; // sys_record
global.__objectDepths[7] = -1000; // sys_camera
global.__objectDepths[8] = 0; // obj_create
global.__objectDepths[9] = 0; // obj_create_tpevent
global.__objectDepths[10] = 0; // obj_playerdead
global.__objectDepths[11] = 0; // obj_fakeplayer
global.__objectDepths[12] = 0; // obj_teleport
global.__objectDepths[13] = 0; // obj_trigger
global.__objectDepths[14] = 0; // obj_tp
global.__objectDepths[15] = -99; // obj_text
global.__objectDepths[16] = 0; // playerKiller
global.__objectDepths[17] = -9999999; // obj_GAMEOVER
global.__objectDepths[18] = 0; // sys_sound
global.__objectDepths[19] = 0; // sys_shader
global.__objectDepths[20] = -1000; // obj_block
global.__objectDepths[21] = 0; // obj_banblock
global.__objectDepths[22] = -5; // obj_platform
global.__objectDepths[23] = -5; // obj_ivy
global.__objectDepths[24] = -1; // obj_walljumpL
global.__objectDepths[25] = -1; // obj_walljumpR
global.__objectDepths[26] = -10; // obj_platform2
global.__objectDepths[27] = -10; // obj_player
global.__objectDepths[28] = -5; // obj_bullet
global.__objectDepths[29] = -10; // obj_aqua_old
global.__objectDepths[30] = -10; // obj_ignis_old
global.__objectDepths[31] = -10; // obj_ignis_unused
global.__objectDepths[32] = -9; // object189
global.__objectDepths[33] = -10; // obj_ribra
global.__objectDepths[34] = -15; // obj_vampair_old
global.__objectDepths[35] = -10; // tmp_boss
global.__objectDepths[36] = 1; // obj_dimension
global.__objectDepths[37] = -10; // obj_golem
global.__objectDepths[38] = -10; // obj_golem_part
global.__objectDepths[39] = -10; // obj_ignis
global.__objectDepths[40] = -10; // obj_reaper
global.__objectDepths[41] = 0; // obj_thetime
global.__objectDepths[42] = -5; // obj_sealedstone_boss
global.__objectDepths[43] = -10; // obj_aqua
global.__objectDepths[44] = -10; // obj_witch
global.__objectDepths[45] = -9; // obj_sorcerer
global.__objectDepths[46] = -15; // obj_vampair
global.__objectDepths[47] = -10; // obj_karena
global.__objectDepths[48] = 0; // obj_spike
global.__objectDepths[49] = 0; // spr_spike_r
global.__objectDepths[50] = 0; // spr_spike_l
global.__objectDepths[51] = 0; // obj_spike_d
global.__objectDepths[52] = 0; // obj_spikeM
global.__objectDepths[53] = 0; // obj_spikeM_r
global.__objectDepths[54] = 0; // obj_spikeM_l
global.__objectDepths[55] = 0; // obj_spikeM_down
global.__objectDepths[56] = 0; // obj_spike2
global.__objectDepths[57] = 0; // obj_spike3
global.__objectDepths[58] = -2; // obj_spikeA
global.__objectDepths[59] = -15; // obj_holysword
global.__objectDepths[60] = 1; // obj_holysword2
global.__objectDepths[61] = 0; // obj_killblock
global.__objectDepths[62] = -15; // obj_scythe
global.__objectDepths[63] = -21; // obj_jellyfish
global.__objectDepths[64] = 5; // obj_knife
global.__objectDepths[65] = -1; // obj_beam
global.__objectDepths[66] = 5; // obj_darkwarm
global.__objectDepths[67] = 5; // obj_dimensionwarm
global.__objectDepths[68] = 0; // obj_magic
global.__objectDepths[69] = 0; // obj_laserblue
global.__objectDepths[70] = -100; // obj_danmaku
global.__objectDepths[71] = -30; // obj_bloodball
global.__objectDepths[72] = -30; // obj_bloodabs
global.__objectDepths[73] = -5; // obj_bloodball2
global.__objectDepths[74] = -20; // obj_bloodscythe
global.__objectDepths[75] = -20; // obj_chain
global.__objectDepths[76] = -1; // obj_save
global.__objectDepths[77] = 0; // obj_save_wuss
global.__objectDepths[78] = 0; // obj_save_flip
global.__objectDepths[79] = 0; // obj_save_flip_wuss
global.__objectDepths[80] = -200; // obj_tip
global.__objectDepths[81] = 0; // obj_more
global.__objectDepths[82] = 0; // obj_hmore
global.__objectDepths[83] = 0; // obj_vmore
global.__objectDepths[84] = 1; // obj_light
global.__objectDepths[85] = 0; // obj_light2
global.__objectDepths[86] = 0; // obj_breakgener
global.__objectDepths[87] = 0; // obj_flipblock_on
global.__objectDepths[88] = 0; // obj_flipblock_off
global.__objectDepths[89] = 1; // obj_gravity_more
global.__objectDepths[90] = 1; // obj_gravity_less
global.__objectDepths[91] = 1; // obj_gravity_right
global.__objectDepths[92] = 1; // obj_gravity_left
global.__objectDepths[93] = 0; // obj_button
global.__objectDepths[94] = 0; // obj_orb
global.__objectDepths[95] = 0; // obj_shift
global.__objectDepths[96] = 0; // obj_lock
global.__objectDepths[97] = -20; // obj_lockred
global.__objectDepths[98] = -20; // obj_lockblue
global.__objectDepths[99] = -20; // obj_lockyellow
global.__objectDepths[100] = -20; // obj_lockgreen
global.__objectDepths[101] = -20; // obj_lockwhite
global.__objectDepths[102] = 0; // obj_lockpurple
global.__objectDepths[103] = 0; // obj_lockdestroy
global.__objectDepths[104] = 0; // obj_key
global.__objectDepths[105] = 0; // obj_ruingolem
global.__objectDepths[106] = 2; // obj_ruingolem_part
global.__objectDepths[107] = 0; // obj_golem_head
global.__objectDepths[108] = 0; // obj_golem_part2
global.__objectDepths[109] = 3; // object98
global.__objectDepths[110] = 5; // obj_po
global.__objectDepths[111] = -100; // obj_warning
global.__objectDepths[112] = -100; // obj_warning2
global.__objectDepths[113] = -100; // obj_warning3
global.__objectDepths[114] = -15; // obj_laser
global.__objectDepths[115] = 0; // obj_earchquake
global.__objectDepths[116] = 0; // obj_mirror
global.__objectDepths[117] = -100; // obj_charge
global.__objectDepths[118] = -15; // obj_burst
global.__objectDepths[119] = 0; // obj_darkburst
global.__objectDepths[120] = -5; // obj_fireball
global.__objectDepths[121] = -15; // obj_waterball
global.__objectDepths[122] = 0; // obj_unused
global.__objectDepths[123] = -9; // obj_savetxt
global.__objectDepths[124] = -15; // obj_blood
global.__objectDepths[125] = 0; // obj_blockbreak
global.__objectDepths[126] = -100; // obj_bubble
global.__objectDepths[127] = -5; // obj_sealedstone
global.__objectDepths[128] = 0; // obj_jijin
global.__objectDepths[129] = 0; // obj_dust
global.__objectDepths[130] = -4; // obj_ruinbeam
global.__objectDepths[131] = -11; // obj_espike
global.__objectDepths[132] = 1; // obj_espikeblood
global.__objectDepths[133] = 0; // obj_scrollblock
global.__objectDepths[134] = 0; // obj_whitechunk
global.__objectDepths[135] = 0; // obj_blade
global.__objectDepths[136] = 0; // obj_meteo
global.__objectDepths[137] = -10; // obj_pwball
global.__objectDepths[138] = -10; // obj_pwball_red
global.__objectDepths[139] = 0; // obj_lasergener
global.__objectDepths[140] = 0; // obj_jellygener
global.__objectDepths[141] = -15; // obj_watergener
global.__objectDepths[142] = -15; // obj_beamgener
global.__objectDepths[143] = 0; // obj_fishgener
global.__objectDepths[144] = 0; // obj_spell
global.__objectDepths[145] = 0; // obj_lasershot
global.__objectDepths[146] = -8; // obj_cirle
global.__objectDepths[147] = -4; // obj_autogolem
global.__objectDepths[148] = -2000; // obj_deaddebug
global.__objectDepths[149] = 10; // obj_flipeffect
global.__objectDepths[150] = 10; // obj_flipeffect2
global.__objectDepths[151] = -10; // obj_replay
global.__objectDepths[152] = 0; // obj_guyorb1
global.__objectDepths[153] = 0; // obj_guyorb2
global.__objectDepths[154] = 0; // spr_sealedstone_
global.__objectDepths[155] = 0; // obj_guyfield
global.__objectDepths[156] = -20; // obj_keycontrol
global.__objectDepths[157] = -20; // obj_keycontrol2
global.__objectDepths[158] = -30; // obj_curse
global.__objectDepths[159] = 0; // obj_lasergener2
global.__objectDepths[160] = 0; // obj_firerain
global.__objectDepths[161] = 0; // obj_curseshoot
global.__objectDepths[162] = -15; // obj_event_vampire
global.__objectDepths[163] = 1; // obj_spikeboom
global.__objectDepths[164] = 0; // obj_meteogener
global.__objectDepths[165] = 0; // obj_gear
global.__objectDepths[166] = 0; // obj_banjak
global.__objectDepths[167] = -100; // obj_sin1event
global.__objectDepths[168] = 0; // obj_rock2
global.__objectDepths[169] = -12; // obj_water
global.__objectDepths[170] = -12; // obj_water2
global.__objectDepths[171] = -12; // obj_water2_2
global.__objectDepths[172] = -12; // obj_water3
global.__objectDepths[173] = -12; // obj_water4
global.__objectDepths[174] = 0; // obj_watergenerater
global.__objectDepths[175] = 0; // obj_dball
global.__objectDepths[176] = 0; // obj_dball2
global.__objectDepths[177] = 0; // obj_dlaser
global.__objectDepths[178] = 0; // obj_dimension_main
global.__objectDepths[179] = 0; // obj_thepower
global.__objectDepths[180] = 0; // obj_dlasergener
global.__objectDepths[181] = 0; // obj_gra
global.__objectDepths[182] = -1000; // obj_dimensionstart
global.__objectDepths[183] = 0; // obj_dimensionwarning
global.__objectDepths[184] = -15; // obj_dimensionfade
global.__objectDepths[185] = 0; // obj_fadegener
global.__objectDepths[186] = 0; // obj_dimensionparticle
global.__objectDepths[187] = -100; // sys_part
global.__objectDepths[188] = 0; // obj_dimension_unused
global.__objectDepths[189] = -1000; // obj_event_ending
global.__objectDepths[190] = -10; // obj_event_boss
global.__objectDepths[191] = -30; // obj_rock
global.__objectDepths[192] = -100; // obj_tmp__
global.__objectDepths[193] = 0; // obj_resetorb
global.__objectDepths[194] = 0; // obj_bright
global.__objectDepths[195] = 0; // obj_jellygener2
global.__objectDepths[196] = -10; // obj_aquasword
global.__objectDepths[197] = 0; // obj_circle_flamegener
global.__objectDepths[198] = 0; // obj_warning_meteo
global.__objectDepths[199] = 105; // obj_portcullis
global.__objectDepths[200] = 0; // obj_lasergener3
global.__objectDepths[201] = 0; // obj_block_tower
global.__objectDepths[202] = 0; // sys_tiletoblock
global.__objectDepths[203] = 0; // obj_noone
global.__objectDepths[204] = 1000000; // obj_towerbackground
global.__objectDepths[205] = -100; // obj_soul
global.__objectDepths[206] = -10; // obj_dimensionkidform
global.__objectDepths[207] = -10; // obj_dimensionbossform
global.__objectDepths[208] = 100; // obj_dimensionblock
global.__objectDepths[209] = -5; // obj_enemybullet
global.__objectDepths[210] = -5; // obj_grenade


global.__objectNames[0] = "sys_init";
global.__objectNames[1] = "sys_TITLE";
global.__objectNames[2] = "object163";
global.__objectNames[3] = "sys_global";
global.__objectNames[4] = "obj_temp";
global.__objectNames[5] = "sys_lighting";
global.__objectNames[6] = "sys_record";
global.__objectNames[7] = "sys_camera";
global.__objectNames[8] = "obj_create";
global.__objectNames[9] = "obj_create_tpevent";
global.__objectNames[10] = "obj_playerdead";
global.__objectNames[11] = "obj_fakeplayer";
global.__objectNames[12] = "obj_teleport";
global.__objectNames[13] = "obj_trigger";
global.__objectNames[14] = "obj_tp";
global.__objectNames[15] = "obj_text";
global.__objectNames[16] = "playerKiller";
global.__objectNames[17] = "obj_GAMEOVER";
global.__objectNames[18] = "sys_sound";
global.__objectNames[19] = "sys_shader";
global.__objectNames[20] = "obj_block";
global.__objectNames[21] = "obj_banblock";
global.__objectNames[22] = "obj_platform";
global.__objectNames[23] = "obj_ivy";
global.__objectNames[24] = "obj_walljumpL";
global.__objectNames[25] = "obj_walljumpR";
global.__objectNames[26] = "obj_platform2";
global.__objectNames[27] = "obj_player";
global.__objectNames[28] = "obj_bullet";
global.__objectNames[29] = "obj_aqua_old";
global.__objectNames[30] = "obj_ignis_old";
global.__objectNames[31] = "obj_ignis_unused";
global.__objectNames[32] = "object189";
global.__objectNames[33] = "obj_ribra";
global.__objectNames[34] = "obj_vampair_old";
global.__objectNames[35] = "tmp_boss";
global.__objectNames[36] = "obj_dimension";
global.__objectNames[37] = "obj_golem";
global.__objectNames[38] = "obj_golem_part";
global.__objectNames[39] = "obj_ignis";
global.__objectNames[40] = "obj_reaper";
global.__objectNames[41] = "obj_thetime";
global.__objectNames[42] = "obj_sealedstone_boss";
global.__objectNames[43] = "obj_aqua";
global.__objectNames[44] = "obj_witch";
global.__objectNames[45] = "obj_sorcerer";
global.__objectNames[46] = "obj_vampair";
global.__objectNames[47] = "obj_karena";
global.__objectNames[48] = "obj_spike";
global.__objectNames[49] = "spr_spike_r";
global.__objectNames[50] = "spr_spike_l";
global.__objectNames[51] = "obj_spike_d";
global.__objectNames[52] = "obj_spikeM";
global.__objectNames[53] = "obj_spikeM_r";
global.__objectNames[54] = "obj_spikeM_l";
global.__objectNames[55] = "obj_spikeM_down";
global.__objectNames[56] = "obj_spike2";
global.__objectNames[57] = "obj_spike3";
global.__objectNames[58] = "obj_spikeA";
global.__objectNames[59] = "obj_holysword";
global.__objectNames[60] = "obj_holysword2";
global.__objectNames[61] = "obj_killblock";
global.__objectNames[62] = "obj_scythe";
global.__objectNames[63] = "obj_jellyfish";
global.__objectNames[64] = "obj_knife";
global.__objectNames[65] = "obj_beam";
global.__objectNames[66] = "obj_darkwarm";
global.__objectNames[67] = "obj_dimensionwarm";
global.__objectNames[68] = "obj_magic";
global.__objectNames[69] = "obj_laserblue";
global.__objectNames[70] = "obj_danmaku";
global.__objectNames[71] = "obj_bloodball";
global.__objectNames[72] = "obj_bloodabs";
global.__objectNames[73] = "obj_bloodball2";
global.__objectNames[74] = "obj_bloodscythe";
global.__objectNames[75] = "obj_chain";
global.__objectNames[76] = "obj_save";
global.__objectNames[77] = "obj_save_wuss";
global.__objectNames[78] = "obj_save_flip";
global.__objectNames[79] = "obj_save_flip_wuss";
global.__objectNames[80] = "obj_tip";
global.__objectNames[81] = "obj_more";
global.__objectNames[82] = "obj_hmore";
global.__objectNames[83] = "obj_vmore";
global.__objectNames[84] = "obj_light";
global.__objectNames[85] = "obj_light2";
global.__objectNames[86] = "obj_breakgener";
global.__objectNames[87] = "obj_flipblock_on";
global.__objectNames[88] = "obj_flipblock_off";
global.__objectNames[89] = "obj_gravity_more";
global.__objectNames[90] = "obj_gravity_less";
global.__objectNames[91] = "obj_gravity_right";
global.__objectNames[92] = "obj_gravity_left";
global.__objectNames[93] = "obj_button";
global.__objectNames[94] = "obj_orb";
global.__objectNames[95] = "obj_shift";
global.__objectNames[96] = "obj_lock";
global.__objectNames[97] = "obj_lockred";
global.__objectNames[98] = "obj_lockblue";
global.__objectNames[99] = "obj_lockyellow";
global.__objectNames[100] = "obj_lockgreen";
global.__objectNames[101] = "obj_lockwhite";
global.__objectNames[102] = "obj_lockpurple";
global.__objectNames[103] = "obj_lockdestroy";
global.__objectNames[104] = "obj_key";
global.__objectNames[105] = "obj_ruingolem";
global.__objectNames[106] = "obj_ruingolem_part";
global.__objectNames[107] = "obj_golem_head";
global.__objectNames[108] = "obj_golem_part2";
global.__objectNames[109] = "object98";
global.__objectNames[110] = "obj_po";
global.__objectNames[111] = "obj_warning";
global.__objectNames[112] = "obj_warning2";
global.__objectNames[113] = "obj_warning3";
global.__objectNames[114] = "obj_laser";
global.__objectNames[115] = "obj_earchquake";
global.__objectNames[116] = "obj_mirror";
global.__objectNames[117] = "obj_charge";
global.__objectNames[118] = "obj_burst";
global.__objectNames[119] = "obj_darkburst";
global.__objectNames[120] = "obj_fireball";
global.__objectNames[121] = "obj_waterball";
global.__objectNames[122] = "obj_unused";
global.__objectNames[123] = "obj_savetxt";
global.__objectNames[124] = "obj_blood";
global.__objectNames[125] = "obj_blockbreak";
global.__objectNames[126] = "obj_bubble";
global.__objectNames[127] = "obj_sealedstone";
global.__objectNames[128] = "obj_jijin";
global.__objectNames[129] = "obj_dust";
global.__objectNames[130] = "obj_ruinbeam";
global.__objectNames[131] = "obj_espike";
global.__objectNames[132] = "obj_espikeblood";
global.__objectNames[133] = "obj_scrollblock";
global.__objectNames[134] = "obj_whitechunk";
global.__objectNames[135] = "obj_blade";
global.__objectNames[136] = "obj_meteo";
global.__objectNames[137] = "obj_pwball";
global.__objectNames[138] = "obj_pwball_red";
global.__objectNames[139] = "obj_lasergener";
global.__objectNames[140] = "obj_jellygener";
global.__objectNames[141] = "obj_watergener";
global.__objectNames[142] = "obj_beamgener";
global.__objectNames[143] = "obj_fishgener";
global.__objectNames[144] = "obj_spell";
global.__objectNames[145] = "obj_lasershot";
global.__objectNames[146] = "obj_cirle";
global.__objectNames[147] = "obj_autogolem";
global.__objectNames[148] = "obj_deaddebug";
global.__objectNames[149] = "obj_flipeffect";
global.__objectNames[150] = "obj_flipeffect2";
global.__objectNames[151] = "obj_replay";
global.__objectNames[152] = "obj_guyorb1";
global.__objectNames[153] = "obj_guyorb2";
global.__objectNames[154] = "spr_sealedstone_";
global.__objectNames[155] = "obj_guyfield";
global.__objectNames[156] = "obj_keycontrol";
global.__objectNames[157] = "obj_keycontrol2";
global.__objectNames[158] = "obj_curse";
global.__objectNames[159] = "obj_lasergener2";
global.__objectNames[160] = "obj_firerain";
global.__objectNames[161] = "obj_curseshoot";
global.__objectNames[162] = "obj_event_vampire";
global.__objectNames[163] = "obj_spikeboom";
global.__objectNames[164] = "obj_meteogener";
global.__objectNames[165] = "obj_gear";
global.__objectNames[166] = "obj_banjak";
global.__objectNames[167] = "obj_sin1event";
global.__objectNames[168] = "obj_rock2";
global.__objectNames[169] = "obj_water";
global.__objectNames[170] = "obj_water2";
global.__objectNames[171] = "obj_water2_2";
global.__objectNames[172] = "obj_water3";
global.__objectNames[173] = "obj_water4";
global.__objectNames[174] = "obj_watergenerater";
global.__objectNames[175] = "obj_dball";
global.__objectNames[176] = "obj_dball2";
global.__objectNames[177] = "obj_dlaser";
global.__objectNames[178] = "obj_dimension_main";
global.__objectNames[179] = "obj_thepower";
global.__objectNames[180] = "obj_dlasergener";
global.__objectNames[181] = "obj_gra";
global.__objectNames[182] = "obj_dimensionstart";
global.__objectNames[183] = "obj_dimensionwarning";
global.__objectNames[184] = "obj_dimensionfade";
global.__objectNames[185] = "obj_fadegener";
global.__objectNames[186] = "obj_dimensionparticle";
global.__objectNames[187] = "sys_part";
global.__objectNames[188] = "obj_dimension_unused";
global.__objectNames[189] = "obj_event_ending";
global.__objectNames[190] = "obj_event_boss";
global.__objectNames[191] = "obj_rock";
global.__objectNames[192] = "obj_tmp__";
global.__objectNames[193] = "obj_resetorb";
global.__objectNames[194] = "obj_bright";
global.__objectNames[195] = "obj_jellygener2";
global.__objectNames[196] = "obj_aquasword";
global.__objectNames[197] = "obj_circle_flamegener";
global.__objectNames[198] = "obj_warning_meteo";
global.__objectNames[199] = "obj_portcullis";
global.__objectNames[200] = "obj_lasergener3";
global.__objectNames[201] = "obj_block_tower";
global.__objectNames[202] = "sys_tiletoblock";
global.__objectNames[203] = "obj_noone";
global.__objectNames[204] = "obj_towerbackground";
global.__objectNames[205] = "obj_soul";
global.__objectNames[206] = "obj_dimensionkidform";
global.__objectNames[207] = "obj_dimensionbossform";
global.__objectNames[208] = "obj_dimensionblock";
global.__objectNames[209] = "obj_enemybullet";
global.__objectNames[210] = "obj_grenade";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for