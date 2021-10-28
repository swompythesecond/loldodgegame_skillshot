v_scale = 0.55;
image_xscale = v_scale;
image_yscale = v_scale;                        
depth = 2 ;
image_speed = 1.2;

enum mouse {none}



global.points = 0;
global.tick = 1;
hsp = 0;
vsp = 0;
grv = 0.3;
walksp = 5.5;
normal_walksp = walksp;
flash_power = 170;
flash_cd = 0 ;
e_cd = 0 ;
y_w_cd = 0;
z_w_cd = 0;
t_w_cd = 0;
wtimer= 0;
xx = mouse.none;
yy = mouse.none;
direction_cd = 0;

pauseframes_max =40;
pauseframes = 0;

fpauseframes_max = 150;
fpauseframes     = 150;
luxpauseframes_max =200;
luxpauseframes = 200;

walking = 0;
aarange = 500;
attack_cd = 0;
attackspeed = 20;
global.apm = 1;
global.apm_2 = 1;
outofrange = 1;
mr_on_enemy = 0;
key_a_allowed = 1;
aa = 1;
key_q_cd = 0;
global.q_cd_reset = 0;
key_q_cd_max = 40;
key_q_animation = 0;
key_q_tick =0;

key_w_cd = 0;
global.w_cd_reset = 0;
key_w_cd_max = 100;
key_w_animation = 0;
key_w_tick =0;

e_tik = 0;








global.highestcombo = 0;
global.xerath_q = 2;
key_q_on = 0;
global.xerath_stop = 0;

x_key_e_cd = 0;
x_key_e_cd_max = 70;
x_key_e_tick_1 = 0;
x_key_e_tick_2 = 0;

global.x_q_up = 1;
global.x_q_direction = 0;
global.x_q_e = 0;
global.r_on = 0;
xerath_r_charge = 0;
global.r_ontheway = 0;
global.enemy_stop = 0;
global.xerath_bullet = 0;
x_key_r_tick_max = 1600;
x_key_r_tick = x_key_r_tick_max;

x_key_q_tick_max = 20;
x_key_q_tick = 0;

x_key_w_tick_max = 70;
x_key_w_tick = 0;


image_angle_add = 105;


e_dash_tick = 0;
key_e_tick =  0;

e_fast_walk_timer = 0;

e_dash_x = mouse_x;
e_dash_y = mouse_y;

key_q_animation = 0;

angle_change = 0;

leblanc_w_cd = 0;
leblanc_w_cd = 0;
w_leblanc_tick = 0;
global.wx = mouse_x;
global.wy = mouse_y;
global.leblanc_w = 0;




if global.mode == 4{
	if global.dodge = 0{
		enemy_timer_max = 20;
	}
	else{
	enemy_timer_max = 50;
	}
}
else{

if global.dodge = 0{
		enemy_timer_max = 50;
	}
	else{
	enemy_timer_max = 80;
	}

}
max_enemy = 16;
enemy_timer = enemy_timer_max;
enemy_spawn = 0; 
enemy_sub = 0.001;


if global.skillshot == 1 && global.dodge ==1 {
bullet_sub = 0.005;
enemy_timer_max = 70;
max_enemy = 35;
}

if global.background == 2 {
	x = 864;
	y = 448;
}

pos11= oplayer.x;
pos12= oplayer.y;
pos21= oplayer.x;
pos22= oplayer.y;

key_set_q = ord(string_upper(global.q_key));
key_set_e = ord(string_upper(global.e_key));
key_set_f = ord(string_upper(global.f_key));
key_set_z = ord(string_upper(global.z_key));

enemy_spawned = 0;
is_dead = 0;

easter_egg = 0;


if global.skillshot == 1 && global.dodge == 0{

if global.mode = 1 {global.enemyspeed = 4; }
if global.mode = 2 {global.enemyspeed = 6; }
if global.mode = 3 {global.enemyspeed = 15; }
if global.mode = 4 {global.enemyspeed = 6; }

}

if global.skillshot == 0 && global.dodge == 1{

if global.mode = 1 {global.bullet_speed = 5; }
if global.mode = 2 {global.bullet_speed = 7.5; }
if global.mode = 3 {global.bullet_speed = 15; }



}


if global.skillshot == 1 && global.dodge == 1{


if global.mode = 1 {global.bullet_speed = 5; }
if global.mode = 2 {global.bullet_speed = 7.5; }
if global.mode = 3 {global.bullet_speed = 12; }
if global.mode = 4 {global.bullet_speed = 7.5; }


}


custom_game = global.custom_game;

if custom_game == 1 {
	global.bullet_speed = global.bullet_set_speed;
	enemy_timer_max = global.enemy_set_amount;
	global.enemyspeed = global.enemy_set_speed;
}

randomize();


