/// @description 
draw_set_color(c_red);
arm_draw();

var qx = arm_end_x + lengthdir_x(12, seg_get_angle(2)-flip_*45);
var qy = arm_end_y + lengthdir_y(9, seg_get_angle(2)-flip_*45);

var a = 1;
if(hand_is_grab){a = 0.7;}
draw_sprite_ext(spr_grabber, hand_is_grab, arm_end_x,arm_end_y,1,flip_, seg_get_angle(2),c_white,a);
