playerdir = point_direction(x,y,oplayer.x,oplayer.y);
angle = point_direction(x,y,oplayer.x,oplayer.y);


if global.enemy_stop = 0{

if distance_to_object(oplayer) > 150{
motion_set(playerdir+zigzag,global.enemyspeed*0.7)
}
else{
	move_towards_point(oplayer.x,oplayer.y,global.enemyspeed*0.7);
}

}




if global.enemy_stop = 1 {
	playerdirection = point_direction(x,y,oplayer.x+ zigzag,oplayer.y+ zigzag);
	motion_set (playerdirection+180,global.enemyspeed*0.7);
	
	
}





zigzag+=zigzagchange;

if zigzag>30{
	zigzagchange = -1;
}
if zigzag<-30{
	zigzagchange = 1;
}


x_value += 0.1;

if place_meeting(x,y,oplayer){
	oplayer.is_dead =1;
}








if e_tik > 0 {e_tik --;};






if angle >330 || angle <30{
sprite_index = s_enemy_side;
image_xscale = v_scale;

}

if angle >30 && angle <90{
sprite_index = s_enemy_up;
image_xscale = v_scale*-1;


}

if angle >90 && angle <150{
sprite_index = s_enemy_up;
image_xscale = v_scale;

}
if angle >150 && angle <210{
sprite_index = s_enemy_side;
image_xscale = v_scale*-1;


}
if angle >210 && angle <270{
sprite_index = s_enemy_down;
image_xscale = v_scale*-1;

}
if angle >270 && angle <330{
sprite_index = s_enemy_down;
image_xscale = v_scale;


}