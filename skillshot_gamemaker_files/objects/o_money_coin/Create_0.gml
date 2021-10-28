image_xscale =1;
image_yscale =1;

tik = 20;
	
	if global.combo < 10 {
		
	sprite_index = smoneycoin10;	
	global.points+=10	
	}
	
	
	if global.combo >= 10  && global.combo < 20 {
	
	sprite_index = smoneycoin20;
	global.points+=20;
	}
	
	if global.combo >= 20 {
	sprite_index = smoneycoin30;
	
	global.points+=30;
	}
	

	