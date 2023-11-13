/// @description 

if mouse_check_button(mb_left){
	arm_move_towards(mouse_x-lengthdir_x(12, seg_get_angle(2)-flip_*45), mouse_y-lengthdir_y(9, seg_get_angle(2)-flip_*45), grab_speed);
	hand_is_grab = 1;
	grab_speed += grab_accel;
}
else{
	hand_is_grab = 0;
	grab_speed = 1;
}

