tile_collision = tilemap_id(L_BLOCK);

hspd = 0;
vspd = 0;
grav = 0;
onground = 0;

install_y = 360 + irandom_range(-32, 64);

install_time = 50;
install_idx = 0;

onboom = false;
boom_time = 50;
boom_idx = 0;
boom_radius = 64;

part_radius = 16;

oncircle = false;
circle_time = 25;
circle_radius = 96 - 16;
circle_idx = 0;

px = x;
py = y;