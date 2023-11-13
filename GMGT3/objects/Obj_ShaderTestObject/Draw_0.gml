/// @description Insert description here
// You can write your code in this editor
scr_start_shader_rainbow();
draw_set_color(c_white);
draw_rectangle(x+60,y+60,x+120,y+120,false);
draw_self();
scr_reset_shader();