/// @description 
//progress bar

var cpx = scr_get_camera_position_x()-(global.SpocPack_camera_width/2) + 16;
var cpy = scr_get_camera_position_y()-(global.SpocPack_camera_height/2) + 16;
var w = 60;
var h = 8;


progress = 1/growth_threshold * growth;
draw_set_color(c_aqua);
draw_rectangle(cpx,cpy,cpx+w*progress,cpy+h,false);
draw_set_color(c_white);
draw_rectangle(cpx,cpy,cpx+w,cpy+h, true);

draw_self();