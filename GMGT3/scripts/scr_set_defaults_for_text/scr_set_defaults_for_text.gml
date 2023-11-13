//initalization to keep track of some variables
function scr_set_defaults_for_text(){
	line_break_pos[0,page_number] = 9999;
	line_break_num[page_number] = 0;
	line_break_offset[page_number] = 0;
	
	//variables for every letter/character
	for(var c = 0; c < 500; c++)
	{
		col_1[c,page_number] = c_white;	
		col_2[c,page_number] = c_white;	
		col_3[c,page_number] = c_white;	
		col_4[c,page_number] = c_white;	
		
		float_text[c,page_number] = 0;
		float_dir[c,page_number] = c*20;
		float_speed[c,page_number] = -6;
		float_amp[c,page_number] = 1;
		
		shake_text[c,page_number] = 0;
		shake_amp[c,page_number] = 1;
		shake_timer[c,page_number] = irandom(4);
		shake_dir[c,page_number] = irandom(360);
		
		lerp_text[c,page_number] = 0;
		lerp_dir[c,page_number] = irandom(360);
		lerp_speed[c,page_number] = 3;
		lerp_dist[c,page_number] = 5;
		
		shadow_text[c,page_number] = 0;
		shadow_color[c,page_number] = c_black;
		shadow_x_offset[c,page_number] = 1;
		shadow_y_offset[c,page_number] = 1;
	}
	
	text_scl[page_number] = global.SpocPack_dialogue_text_scale;
	
	txtb_spr[page_number] = global.SpocPack_dialogue_background_9slice;
	txtb_9slice_bottom[page_number] = global.SpocPack_dialogue_background_9slice_bottom;
	txtb_9slice_left[page_number] = global.SpocPack_dialogue_background_9slice_left;
	txtb_9slice_top[page_number] = global.SpocPack_dialogue_background_9slice_top;
	txtb_9slice_right[page_number] = global.SpocPack_dialogue_background_9slice_right;
	speaker_sprite[page_number] = noone;
	speaker_side[page_number] = 1;
	snd[page_number] = noone;
	text_spd[page_number] = global.SpocPack_dialogue_default_text_speed;
	snd_delay[page_number] = global.SpocPack_dialogue_default_text_snd_delay;
	text_pause_time[page_number] = global.SpocPack_dialogue_default_text_pause_time;
}