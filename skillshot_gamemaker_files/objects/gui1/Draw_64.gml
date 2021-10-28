x= view_xview[0];
y= view_yview[0];
draw_set_font(BebasNeue);
draw_set_color(c_white);
draw_text(x+950, y+50, (global.points));

if global.combo > 0 && global.combotik > 0 {
	
	
draw_text_transformed_color(x + 1400, y + 50,"Combo: x",1,1,0,c_white,c_white,c_white,c_white,global.combotik/100)
draw_text_transformed_color(x + 1520, y + 50,global.combo,1,1,0,c_white,c_white,c_white,c_white,global.combotik/100)
}

if global.combotik > 0 {global.combotik --;};

if global.combotik < 0 {global.combo = 0;};
	
	if (global.playzed = 1) {
	
	global.ves = global.cooldown_max - global.cooldown;
	if(global.cooldown == 0)
	{
		draw_set_color(c_green);
	}
	else
	{
		draw_set_color(c_red);
	}
	draw_rectangle(x + 50, y + 10,  x + 50 + global.ves, 30, false);
	

	global.ves2 = global.cooldown_max2 - global.cooldown2;
	if(global.cooldown2 == 0)
	{
		draw_set_color(c_green);
	}
	else
	{
		draw_set_color(c_red);
	}
	draw_rectangle(x + 50, y + 60,  x + 50 + global.ves2, 80, false);
	
	
	global.ves3 = global.cooldown_max3 - global.cooldown3;
	if(global.cooldown3 == 0)
	{
		draw_set_color(c_green);
	}
	else
	{
		draw_set_color(c_red);
	}
	draw_rectangle(x + 50, y + 110,  x + 50 + global.ves3, 130, false);
	
	

	
	
	
	draw_set_color(c_white);
	
	draw_text_transformed_color(x + 280, y + 5,"F",0.7,0.7,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(x + 280, y + 53,"E",0.7,0.7,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(x + 280, y + 103,"Q",0.7,0.7,0,c_white,c_white,c_white,c_white,1);

	
	}
	
	
	if (global.playxerath = 1){
	
	
	
	
		global.xves = global.xcooldown_max - global.xcooldown;
	if(global.xcooldown == 0)
	{
		draw_set_color(c_green);
	}
	else
	{
		draw_set_color(c_red);
	}
	draw_rectangle(x + 50, y + 10,  x + 50 + global.xves, 30, false);
	
	
	
	global.xves2 = global.xcooldown_max2 - global.xcooldown2;
	if(global.xcooldown2 == 0)
	{
		draw_set_color(c_green);
	}
	else
	{
		draw_set_color(c_red);
	}
	draw_rectangle(x + 50, y + 60,  x + 50 + global.xves2, 80, false);
	
	
	global.xves3 = global.xcooldown_max3 - global.xcooldown3;
	if(global.xcooldown3 == 0)
	{
		draw_set_color(c_green);
	}
	else
	{
		draw_set_color(c_red);
	}
	draw_rectangle(x + 50, y + 110,  x + 50 + global.xves3, 130, false);
	
	
	global.xves4 = global.xcooldown_max4 - global.xcooldown4;
	if(global.xcooldown4 == 0)
	{
		draw_set_color(c_green);
	}
	else
	{
		draw_set_color(c_red);
	}
	draw_rectangle(x + 50, y + 160,  x + 50 + global.xves4, 180, false);
	
	
	
		global.xves5 = global.xcooldown_max5 - global.xcooldown5;
	if(global.xcooldown5 == 0)
	{
		draw_set_color(c_green);
	}
	else
	{
		draw_set_color(c_red);
	}
	draw_rectangle(x + 50, y + 210,  x + 50 + global.xves5, 230, false);
	
	
	
	
	draw_text_transformed_color(x + 280, y + 5,"Q",0.7,0.7,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(x + 280, y + 53,"W",0.7,0.7,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(x + 280, y + 103,"E",0.7,0.7,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(x + 280, y + 153,"R",0.7,0.7,0,c_white,c_white,c_white,c_white,1);
	draw_text_transformed_color(x + 280, y + 203,"F",0.7,0.7,0,c_white,c_white,c_white,c_white,1);
	
	}
