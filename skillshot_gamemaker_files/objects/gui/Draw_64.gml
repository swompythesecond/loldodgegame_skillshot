
draw_set_font(BebasNeue);
draw_set_halign(fa_center);
draw_set_color(c_white);
draw_text_transformed(browser_width*0.5, browser_height*0.05, (global.points),browser_width/1920,browser_width/1920,0);
draw_text_transformed_color(browser_width*0.7, browser_height*0.05,"Combo: x "+string(global.combo),browser_width/1920,browser_width/1920,0,c_white,c_white,c_white,c_white,global.combotik/100)


if show_gui == 1 {

draw_sprite_stretched(s_q_gui,1,browser_width*0.41,browser_height*0.9,browser_width/var0,browser_height/var2);
draw_sprite_stretched(s_e_gui,1,browser_width*0.48,browser_height*0.9,browser_width/var0,browser_height/var2);
draw_sprite_stretched(s_f_gui,1,browser_width*0.55,browser_height*0.9,browser_width/var0,browser_height/var2);
draw_sprite_stretched(s_empty_box_gui,1,browser_width*0.41,browser_height*0.9,browser_width/var0,(browser_height/var2)*(global.cooldown));
draw_sprite_stretched(s_empty_box_gui,1,browser_width*0.48,browser_height*0.9,browser_width/var0,(browser_height/var2)*(global.cooldown3));
draw_sprite_stretched(s_empty_box_gui,1,browser_width*0.55,browser_height*0.9,browser_width/var0,(browser_height/var2)*(global.cooldown4));

}


