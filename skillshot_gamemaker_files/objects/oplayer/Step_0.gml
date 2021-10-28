
// keys




key_left_p = keyboard_check_pressed(ord("A"));
key_f    = keyboard_check_pressed(key_set_f);
ml =  mouse_check_button_pressed(mb_left);
mr =  mouse_check_button_pressed(mb_right);
key_e = keyboard_check_pressed(ord("E"));
key_w    = keyboard_check_pressed(ord("W"));
key_d    = keyboard_check_pressed(ord("D"));
key_s    = keyboard_check(ord("S"));
key_q    = keyboard_check_pressed(key_set_q);
key_e = keyboard_check_pressed(key_set_e);
key_z = keyboard_check_pressed(key_set_z);
key_w    = keyboard_check_pressed(ord("W"));

//move

//locked cam
if key_z && global.locked_cam = 0{

camera_set_view_border(view_camera[0], 1700, 956);
global.locked_cam = 1;

}

else if key_z && global.locked_cam = 1{

camera_set_view_border(view_camera[0], 100, 100);
global.locked_cam = 0;

}

//xy


//wall






if( xx != mouse.none && yy != mouse.none){
	
move_towards_point(xx,yy,walksp);

}
	




if (distance_to_point(xx,yy) < walksp){
xx = x;
yy = y;
speed = 0;
}




//sprite walking




	

//wall 1





// wall port



// flash


if global.f == 1 {

if (flash_cd=0) && (key_f) || (flash_cd=0) && (key_d)
{
direction = point_direction(x,y,mouse_x,mouse_y);
	if distance_to_point(mouse_x,mouse_y) < flash_power{
	x=mouse_x;
	y=mouse_y;
	}
	else{
	speed = flash_power;
	}
flash_cd = 600;
instance_create_layer(oplayer.x,oplayer.y,"Instances",oflash)
global.apm += 1;
xx= oplayer.x;
yy= oplayer.y;

}


}


if (flash_cd > 0) {flash_cd--;}

// fast walk 



//alarm



global.cooldown4 = flash_cd/600;
global.cooldown3 = key_e_tick/300;
global.cooldown = key_q_cd /40;



//tick
global.tick += 1;


//inwall


//spawner








//stop walking
if key_s {
	
	speed = 0;
	xx = oplayer.x
	yy = oplayer.y
	}


	






//direction cd









// auto attack

//q shoting

//fireball

if global.skillshot = 1{

if global.q_cd_reset = 1{
	key_q_cd = 0;
	global.x_q_up = 1;
	global.q_cd_reset = 0;
}





if global.q = 1 {

if key_q && key_q_cd = 0{


	angle = point_direction(x, y, mouse_x, mouse_y);
	global.apm+= 1;
	key_q_cd = key_q_cd_max;
	key_q_animation = 24;
	key_q_tick = 10;
	dirmouse = point_direction(x,y,mouse_x,mouse_y);
	image_index = 0;
	instance_create_depth(x,y,3,oezq);

}


if key_q_animation >0{
	

	
	if angle >330 || angle <30{
sprite_index = s_side_shot;
image_xscale = v_scale;

}

if angle >30 && angle <90{
sprite_index = s_up_shot;
image_xscale = v_scale*-1;


}

if angle >90 && angle <150{
sprite_index = s_up_shot;
image_xscale = v_scale;

}
if angle >150 && angle <210{
sprite_index = s_side_shot;
image_xscale = v_scale*-1;


}
if angle >210 && angle <270{
sprite_index = s_down_shot;
image_xscale = v_scale*-1;

}
if angle >270 && angle <330{
sprite_index = s_down_shot;
image_xscale = v_scale;
}

}





if key_q_animation > 0  {key_q_animation--;	}



if key_q_tick >0{
	speed = 0;

}


	
	if key_q_tick == 1 {
	
	}
	
if key_q_tick > 0  {
	key_q_tick--;
	
}

}


if key_q_cd > 0  {
	key_q_cd--;
}


if (speed <=0) {
	walking = 0}
else {walking = 1}

if key_q_tick = 0 && walking = 1 {
	

if angle >330 || angle <30{
sprite_index = s_side;
image_xscale = v_scale;

}

if angle >30 && angle <90{
sprite_index = s_up;
image_xscale = v_scale*-1;


}

if angle >90 && angle <150{
sprite_index = s_up;
image_xscale = v_scale;

}
if angle >150 && angle <210{
sprite_index = s_side;
image_xscale = v_scale*-1;


}
if angle >210 && angle <270{
sprite_index = s_down;
image_xscale = v_scale*-1;

}
if angle >270 && angle <330{
sprite_index = s_down;
image_xscale = v_scale;


}
}





//xerath q


// e
if global.e == 1{

if key_e && key_e_tick = 0{
key_e_tick = 300;	
e_dash_tick = 10;
e_dash_xy = point_direction(x,y,mouse_x,mouse_y);
instance_create_depth(x,y,4,o_fire_ass);
angle = point_direction(x, y, mouse_x, mouse_y);

if angle >330 || angle <30{
sprite_index = s_side;
image_xscale = v_scale;

}

if angle >30 && angle <90{
sprite_index = s_up;
image_xscale = v_scale*-1;


}

if angle >90 && angle <150{
sprite_index = s_up;
image_xscale = v_scale;

}
if angle >150 && angle <210{
sprite_index = s_side;
image_xscale = v_scale*-1;


}
if angle >210 && angle <270{
sprite_index = s_down;
image_xscale = v_scale*-1;

}
if angle >270 && angle <330{
sprite_index = s_down;
image_xscale = v_scale;


}
}

if e_dash_tick = 1{
xx = x;
yy = y;
}

if e_dash_tick > 0 {
	e_dash_tick --;
	motion_set(e_dash_xy,15);
	
	
	}

if key_e_tick > 0 {key_e_tick --;}


}



















if enemy_timer <=0 {
	enemy_spawn = 1 ;
	enemy_spawn_where = irandom_range(1,8);
	global.enemy = 1;
}




if global.enemy_stop  = 0{


if enemy_spawn = 1 { //change 10 to 1 if you want it to work
	
	
	
	
	
	

	
	if enemy_spawn_where = 1 {
		instance_create_depth(irandom_range(0,600),-50,10,oenemy);
		enemy_spawn = 0 ;
		enemy_timer = enemy_timer_max;
		}
	
	if enemy_spawn_where = 2 {
		instance_create_depth(irandom_range(1000,1920),-50,10,oenemy);
		enemy_spawn = 0 ;
		enemy_timer = enemy_timer_max;
		}
		
	if enemy_spawn_where = 3 {
		instance_create_depth(irandom_range(0,1920),1130,10,oenemy);
		enemy_spawn = 0 ;
		enemy_timer = enemy_timer_max;
		}
	
	if enemy_spawn_where = 4 {
		instance_create_depth(irandom_range(0,1920),1130,10,oenemy);
		enemy_spawn = 0 ;
		enemy_timer = enemy_timer_max;
		}
		
		

	if enemy_spawn_where = 5 {
		instance_create_depth(-50,irandom_range(520,1080),10,oenemy);
		enemy_spawn = 0 ;
		enemy_timer = enemy_timer_max;
		}
		
	if enemy_spawn_where = 6 {
		instance_create_depth(-50,irandom_range(520,1080),10,oenemy);
		enemy_spawn = 0 ;
		enemy_timer = enemy_timer_max;
		}
		
	if enemy_spawn_where = 7 {
		instance_create_depth(2000,irandom_range(0,575),10,oenemy);
		enemy_spawn = 0 ;
		enemy_timer = enemy_timer_max;
		}
		
	if enemy_spawn_where = 8 {
		instance_create_depth(2000,irandom_range(915,1080),10,oenemy);
		enemy_spawn = 0 ;
		enemy_timer = enemy_timer_max;
		}
		
	

}




if enemy_timer > 0 { enemy_timer--;}

global.enemy_timer = enemy_timer_max;
if enemy_timer_max > max_enemy && custom_game == 0 {enemy_timer_max -=enemy_sub}


}



}

//walk

if key_q_animation = 0 && speed = 0 {
image_speed = 0;
}
else {image_speed = 1;}



if global.dodge = 1{
	global.points += 1;



//inwall


//spawner





if (pauseframes < 1)
{
    pauseframes = pauseframes_max;
    bullet_side = irandom_range(1,4)







    if (bullet_side == 1) {
		instance_create_depth(irandom_range(0,1920),-50,4,o_bullet);
	}
    else if (bullet_side == 2) {
		instance_create_depth(-50,irandom_range(0,1080),4,o_bullet);
	}
    else if (bullet_side == 3) {
		instance_create_depth(irandom_range(0,1920),1120,4,o_bullet);
	}
    else if (bullet_side = 4) {
		instance_create_depth(1950,irandom_range(0,1080),4,o_bullet);
	}
	





}



pauseframes--;

pauseframes_max -=bullet_sub;

//lux ult









}
	
	


//angle change

if angle_change = 1 && !place_meeting(x,y,o_wall){
angle = point_direction(x, y, mouse_x, mouse_y);




if angle >330 || angle <30{
sprite_index = s_side;
image_xscale = v_scale;

}

if angle >30 && angle <90{
sprite_index = s_up;
image_xscale = v_scale*-1;


}

if angle >90 && angle <150{
sprite_index = s_up;
image_xscale = v_scale;

}
if angle >150 && angle <210{
sprite_index = s_side;
image_xscale = v_scale*-1;


}
if angle >210 && angle <270{
sprite_index = s_down;
image_xscale = v_scale*-1;

}
if angle >270 && angle <330{
sprite_index = s_down;
image_xscale = v_scale;


}
angle_change = 0;
}
	

global.enemy_max=enemy_timer_max;

	
	
	//highest combo
	
	if global.highestcombo < global.combo {
		global.highestcombo = global.combo
	}
	
//xx yy 

global.xx = xx;
global.yy = yy;

// this fixes the bug that he moves in the end

if speed = 0{
xx = oplayer.x;
yy = oplayer.y;
}



if place_meeting(x,y,o_wall){
x = pos21;
y = pos22;
image_speed = 0;

}
else{


pos11 = pos21;
pos12 = pos22;
pos21 = oplayer.x;
pos22 = oplayer.y;

}

if is_dead == 1{
	global.enemy_spawned = enemy_spawned;
	room_goto(room2)
	instance_destroy(oplayer)
	instance_destroy(oezq)
}

//easter egg

if easter_egg = 4{
	o_background_2.easter_egg = 1;
	global.points = 0;
	instance_create_depth(x,y,5,oezq);
	dirmouse = point_direction(x,y,mouse_x,mouse_y);
}


