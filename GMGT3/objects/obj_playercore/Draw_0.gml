/// @description 
//progress bar
draw_set_color(c_white);
draw_rectangle(49, 49, 250, 56, true);

progress = 1/growth_threshold * growth;
draw_set_color(c_aqua);
draw_rectangle(50,50,50+(100*progress),55,false);

draw_self();