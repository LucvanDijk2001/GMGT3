// set offsets for textbox
function scr_dialogue_set_textbox_offsets(middle_x,left_x,p_left_x,right_x,p_right_y){
	
	scr_check_dialogue_init();
	
	global.SpocPack_textbox_middle_x_pos = middle_x;
	global.SpocPack_textbox_left_x_pos = left_x;
	global.SpocPack_textbox_left_x_pos_portrait = p_left_x;
	global.SpocPack_textbox_right_x_pos = right_x;
	global.SpocPack_textbox_right_x_pos_portrait = p_right_y;
}