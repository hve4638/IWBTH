if !KILL exit;
if image_alpha<0.3 {exit;}

if sprite_index==spr_scythe {
    image_index=1;
    image_alpha=1;
    alpha=-0.05;
}
scp_kill();

