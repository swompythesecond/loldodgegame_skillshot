v_scale = random_range(0.5,0.6);
image_xscale = v_scale;
image_yscale = v_scale;
x_value = 0;
zigzag = 0;
zigzagchange = 1;
alarm[0] = 120;


image_speed = 0.8



enemy = global.enemy;

e_tik = 0;

o_ez_on_champ = 0;
playerdirection = point_direction(x,y,oplayer.x,oplayer.y);
angle = point_direction(x,y,oplayer.x,oplayer.y);
depth = 0.9;

oplayer.enemy_spawned +=1;

if global.mode = 1 {image_speed = 1};
if global.mode = 2 {image_speed = 1.1};
if global.mode = 3 {image_speed = 1.5};
if global.mode = 4 {image_speed = 1.1};


