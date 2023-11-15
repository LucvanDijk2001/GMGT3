/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_yellow);
draw_set_font(global.SpocPack_font_main);
draw_set_valign(fa_center);
draw_set_halign(fa_right);
draw_text_transformed(x,y,string(global.score),1.5*size,1.5*size,sin(a)*10);
a+= 0.01;