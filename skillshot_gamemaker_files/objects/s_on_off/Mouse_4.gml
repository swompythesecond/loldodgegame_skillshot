if global.on_off == 1 {
	sprite_index = s_off;
	global.on_off = 0;
}

else if global.on_off == 0 {
	sprite_index = s_on;
	global.on_off = 1;
}