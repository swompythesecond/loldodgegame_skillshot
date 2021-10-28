if mouse_check_button_pressed(mb_left) && point_in_rectangle(mouse_x,mouse_y,250,y-10,1500,y+30){
	x=mouse_x;
	global.enemy_set_speed = x/divider-10;
}
if mouse_down == 1 {
	x = mouse_x;
	
	if x > 1500 {
	x = 1500;	
	}
	
	if x < 280 {
		x = 280;	
	}
	global.enemy_set_speed = x/divider-10;
}




