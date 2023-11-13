//================================================local var============================//
#region local var
accept_key = keyboard_check_pressed(global.SpocPack_dialogue_accept_key);

textbox_x = camera_get_view_x(view_camera[0])+global.SpocPack_textbox_x;
textbox_y = camera_get_view_y(view_camera[0])+global.SpocPack_textbox_y;

textbox_img += textbox_img_spd * delta_time/1000000;

textbox_width = global.SpocPack_textbox_width;
textbox_height = global.SpocPack_textbox_height;
line_width = textbox_width-border*2;

#endregion

//================================================SETUP============================//
#region SETUP

if(run_start_action)
{
	run_start_action = false;
	if(start_action != noone)
	{
		scr_dialogue_start_actions(start_action);
	}
}

if(!setup)
{
	setup = true;
	draw_set_font(global.SpocPack_font_main);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	
	//loop through pages
	for(var i = 0; i < page_number; i++)
	{
		//set text length for each page
		text_length[i] = string_length(text[i]);
		
		//get x position for textbox.
		//character on left
		text_x_offset[i] = global.SpocPack_textbox_right_x_pos;
		portrait_x_offset[i] = global.SpocPack_textbox_right_x_pos_portrait;
		
		//character on right
		if(speaker_side[i] == -1)
		{
			text_x_offset[i] = global.SpocPack_textbox_left_x_pos;
			portrait_x_offset[i] = global.SpocPack_textbox_left_x_pos_portrait;
		}
		
		//this is for no character (center)
		if(speaker_sprite[i] == noone)
		{
			text_x_offset[i] = global.SpocPack_textbox_middle_x_pos;
		}
		
		
		//set individual characters and find where lines should break
		for(var c = 0; c < text_length[i]; c++)
		{
			var _char_pos = c+1;
			
			char[c,i] = string_char_at(text[i],_char_pos);
			
			//get current width of line
			var _txt_up_to_char = string_copy(text[i],1,_char_pos);
			var _current_txt_w = string_width(_txt_up_to_char) - string_width(char[c,i]);
			
			//get last free space
			if(char[c,i] == " ")
			{
				last_free_space = _char_pos+1;	
			}
			
			//get the line breaks
			if(_current_txt_w - line_break_offset[i] > line_width / text_scl[i])
			{
				line_break_pos[line_break_num[i],i] = last_free_space;
				line_break_num[i]++;
				var _txt_up_to_last_space = string_copy(text[i],1,last_free_space);
				var _last_free_space_string = string_char_at(text[i],last_free_space);
				line_break_offset[i] = string_width(_txt_up_to_last_space)-string_width(_last_free_space_string);
			}
		}
		
		//getting character positions
		for(var c = 0; c < text_length[i]; c++)
		{
			var _char_pos = c+1;
			var _txt_x = textbox_x+text_x_offset[i] + border;
			var _txt_y = textbox_y + border;
			
			//get current width of line
			var _txt_up_to_char = string_copy(text[i],1,_char_pos);
			var _current_txt_w = string_width(_txt_up_to_char) - string_width(char[c,i]);
			var _txt_line = 0;
			
			//compensate for string breaks
			for(var lb = 0; lb < line_break_num[i]; lb++)
			{
				//if current looping character is after line break
				if(_char_pos >= line_break_pos[lb,i])
				{
					var _str_copy = string_copy(text[i],line_break_pos[lb,i], _char_pos-line_break_pos[lb,i]);
					_current_txt_w = string_width(_str_copy);
					
					//recorn the line this character should be on
					_txt_line = lb+1;
				}
			}
			
			//add to x and y based on new info
			char_x[c,i] = _txt_x+_current_txt_w *  text_scl[i];
			char_y[c,i] = _txt_y+_txt_line*line_sep *  text_scl[i];
		}
	}
}
#endregion

//================================================TEXT TYPE EFFECT============================//
#region TEXT TYPE EFFECT
if(text_pause_timer <= 0)
{
	if(draw_char < text_length[page])
	{
		draw_char += text_spd[page];
		draw_char = clamp(draw_char,0,text_length[page]);
		var _check_char = string_char_at(text[page],draw_char);
		if(_check_char == "." || _check_char == "!" || _check_char == "?" || _check_char == ",")
		{
			text_pause_timer = text_pause_time[page];	
			if(snd[page] != noone)
			{
				if(!audio_is_playing(snd[page]))
				{
					audio_play_sound(snd[page],8,false);
				}
			}
		}
		else
		{
			//typing sound
			if(snd_count < snd_delay[page]/game_get_speed(gamespeed_fps))
			{
				snd_count += delta_time / 1000000;
			}
			else
			{
				snd_count = 0;
				if(snd[page] != noone)
				{
					audio_play_sound(snd[page],8,false);
				}
			}
		}
	}
}
else
{
	text_pause_timer -= delta_time / 1000000;
}
#endregion

//================================================DRAW TEXTBOX============================//
#region DRAW TEXTBOX
var _txtb_x = textbox_x+text_x_offset[page];
var _txtb_y = textbox_y;

//draw speaker
if(speaker_sprite[page] != noone)
{
	sprite_index = speaker_sprite[page];
	if (draw_char == text_length[page])
	{
		image_index = 0;	
	}
	var _speaker_x = textbox_x + portrait_x_offset[page];
	if(speaker_side[page] == -1)
	{
		_speaker_x 	+= sprite_width;
	}
	//draw speaker
	scr_GUI_box_9slice_manual(textbox_x + portrait_x_offset[page],textbox_y,sprite_width,sprite_height,txtb_spr[page],txtb_9slice_left[page],txtb_9slice_right[page],txtb_9slice_top[page],txtb_9slice_bottom[page],textbox_img);
	scr_GUI_image_ext(sprite_index, image_index,_speaker_x,textbox_y,speaker_side[page],1);
}

//draw 9slice
scr_GUI_box_9slice_manual(_txtb_x,_txtb_y,textbox_width,textbox_height,txtb_spr[page],txtb_9slice_left[page],txtb_9slice_right[page],txtb_9slice_top[page],txtb_9slice_bottom[page],textbox_img);
#endregion

//================================================DRAW OPTIONS============================//
#region DRAW OPTIONS
if(page == page_number-1 && draw_char == text_length[page])
{
	//option selection
	option_position += keyboard_check_pressed(global.SpocPack_dialogue_option_next) - keyboard_check_pressed(global.SpocPack_dialogue_option_previous);
	option_position = clamp(option_position,0,option_number-1);
	
	//drawing options
	var op_space = global.SpocPack_textbox_option_spacing;
	var op_bord_x = global.SpocPack_textbox_option_border_x;
	var op_bord_y = global.SpocPack_textbox_option_border_y;
	for(var i = 0; i < option_number; i++)
	{
		//draw the option box
		var o_w = string_width(option[i]) + (op_bord_x*2/global.SpocPack_dialogue_text_scale);
		scr_GUI_box_9slice_manual(_txtb_x + 16,_txtb_y - op_space * option_number + i*op_space,o_w*global.SpocPack_dialogue_text_scale,op_space-1,txtb_spr[page],txtb_9slice_left[page],txtb_9slice_right[page],txtb_9slice_top[page],txtb_9slice_bottom[page],textbox_img);
	
		//draw arrow
		if(option_position == i)
		{
			var sw = sprite_get_width(global.SpocPack_dialogue_option_selector);
			var sh = sprite_get_height(global.SpocPack_dialogue_option_selector);
			scr_GUI_box_image(_txtb_x,_txtb_y - op_space * option_number + i*op_space,sw,sh,global.SpocPack_dialogue_option_selector,SpocPack_im.im_stretch);	
		}
		
		//option text
		scr_GUI_draw_text_dialogue(_txtb_x+16+op_bord_x,_txtb_y - op_space * option_number + i*op_space+op_bord_y,option[i])
	}
}
#endregion

//================================================DRAW TEXT============================//
#region DRAW TEXT
for(var c = 0; c < draw_char; c++)
{
	//=======special stuff=======
	//wavy text
	var _float_y = 0;
	if(float_text[c,page] == true)
	{
		float_dir[c,page] -= float_speed[c,page];
		_float_y = dsin(float_dir[c,page])*float_amp[c,page];
	}
	
	//shaky text
	var shake_x = 0;
	var shake_y = 0;
	if(shake_text[c,page] == true)
	{
		shake_timer[c,page]--;
		if(shake_timer[c,page] <= 0)
		{
			shake_timer[c,page] = irandom_range(2,6);
			shake_dir[c,page] = irandom(360);
			shake_x = lengthdir_x(0.5*shake_amp[c,page],shake_dir[c,page]);
			shake_y = lengthdir_y(0.5*shake_amp[c,page],shake_dir[c,page]);
		}
	}
	
	//lerpy text
	var lerp_x = 0;
	var lerp_y = 0;
	
	if(lerp_text[c,page] == true)
	{
		lerp_x = lengthdir_x(lerp_dist[c,page],lerp_dir[c,page]);
		lerp_y = lengthdir_y(lerp_dist[c,page],lerp_dir[c,page]);
		lerp_dist[c,page] += (0-lerp_dist[c,page])/lerp_speed[c,page];	
	}
	
	var text_pos_x = char_x[c,page]+shake_x+lerp_x;
	var text_pos_y = char_y[c,page]+_float_y+shake_y+lerp_y;
	
	//shadow text
	if(shadow_text[c,page] == true)
	{
		scr_GUI_draw_text_color_dialogue(text_pos_x+shadow_x_offset[c,page],text_pos_y+shadow_y_offset[c,page],char[c,page],text_scl[page],shadow_color[c,page],shadow_color[c,page],shadow_color[c,page],shadow_color[c,page]);
	}
	scr_GUI_draw_text_color_dialogue(text_pos_x,text_pos_y,char[c,page],text_scl[page], col_1[c,page],col_2[c,page],col_3[c,page],col_4[c,page]);
}
#endregion

//================================================SKIP/INCREASE PAGE============================//
#region SKIP/INCREASE PAGE
if(manually_completable)
{
	if(accept_key || external_flip)
	{
		if(draw_char == text_length[page])
		{
			if(page < page_number-1)
			{
				page++;
				draw_char = 0;
			}
			else
			{
				//link text for options
				if(option_number > 0)
				{
					scr_create_dialogue_box(option_link_id[option_position],textbox_img);	
				}
				if(link_id != noone)
				{
					scr_create_dialogue_box(link_id);	
				}
				if(end_action != noone)
					{
						scr_dialogue_end_actions(end_action);	
					}
				instance_destroy();	
			}
		}
		else
		{
			draw_char = text_length[page];	
		}
		if(external_flip)
		{
			external_flip = false;	
		}
	}
}
else
{
	if(accept_key || external_flip)
	{
		if(draw_char == text_length[page])
		{
			if(page < page_number-1)
			{
				page++;
				draw_char = 0;
			}
			else
			{
				if(external_flip)
				{
					//link text for options
					if(option_number > 0)
					{
						scr_create_dialogue_box(option_link_id[option_position],textbox_img);	
					}
					if(link_id != noone)
					{
						scr_create_dialogue_box(link_id);	
					}
					if(end_action != noone)
					{
						scr_dialogue_end_actions(end_action);	
					}
					instance_destroy();	
				}
			}
		}
		else
		{
			draw_char = text_length[page];	
		}
		if(external_flip)
		{
			external_flip = false;	
		}
	}
}
#endregion