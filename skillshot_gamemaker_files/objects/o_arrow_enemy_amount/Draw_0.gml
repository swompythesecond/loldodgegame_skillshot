draw_self();
draw_set_color(c_white);
draw_rectangle(250,y+10,1500,y+20,0);
draw_set_font(BebasNeue);
draw_set_halign(fa_left);
draw_text(250,y-200,"Enemy Amount Interval");
draw_set_halign(fa_center);
draw_text(x,y-150,global.enemy_set_amount);
