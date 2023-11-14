//define characters in here
function scr_dialogue_characters(_name){
	switch(_name)
	{
		#region debug
			
		case "default":
			speaker_sprite[page_number] = spr_character_default;
			txtb_spr[page_number] = spr_textbox_default2;
			txtb_9slice_bottom[page_number] = 3;
			txtb_9slice_top[page_number] = 3;
			txtb_9slice_left[page_number] = 3;
			txtb_9slice_right[page_number] = 3;
			snd[page_number] = snd_text_default_mid;
			text_spd[page_number] = 1;
			snd_delay[page_number] = 5;
			text_pause_time[page_number] = 0.25;
		break;
			
		case "default_happy":
			speaker_sprite[page_number] = spr_character_default_happy;
			txtb_spr[page_number] = spr_textbox_default2;
			txtb_9slice_bottom[page_number] = 2;
			txtb_9slice_top[page_number] = 3;
			txtb_9slice_left[page_number] = 2;
			txtb_9slice_right[page_number] = 2;
			snd[page_number] = snd_text_default_mid;
			text_spd[page_number] = 1;
			snd_delay[page_number] = 5;
			text_pause_time[page_number] = 0.25;
		break;
			
		case "default2":
			speaker_sprite[page_number] = spr_character_default_2;
			txtb_spr[page_number] = spr_textbox_default3;
			txtb_9slice_bottom[page_number] = 2;
			txtb_9slice_top[page_number] = 3;
			txtb_9slice_left[page_number] = 2;
			txtb_9slice_right[page_number] = 2;
			snd[page_number] = snd_text_default_low;
			text_spd[page_number] = .7;
			snd_delay[page_number] = 8;
			text_pause_time[page_number] = 0.45;
		break;
			
		#endregion
			
		#region default
			
		default:
			speaker_sprite[page_number] = spr_character_default;
			txtb_spr[page_number] = global.SpocPack_dialogue_background_9slice;
			txtb_9slice_bottom[page_number] = global.SpocPack_dialogue_background_9slice_bottom;
			txtb_9slice_top[page_number] = global.SpocPack_dialogue_background_9slice_top;
			txtb_9slice_left[page_number] = global.SpocPack_dialogue_background_9slice_left;
			txtb_9slice_right[page_number] = global.SpocPack_dialogue_background_9slice_right;
			snd[page_number] = snd_text_default_mid;
			text_spd[page_number] = global.SpocPack_dialogue_default_text_speed;
			snd_delay[page_number] = global.SpocPack_dialogue_default_text_snd_delay;
			text_pause_time[page_number] = global.SpocPack_dialogue_default_text_pause_time;
		break;
			
		#endregion
		
		case "bob":
			//bob's face that will show up in the portrait when he talks
			speaker_sprite[page_number] = spr_character_default;
			
			//bob's textbox background 9slice + 9slice values
			txtb_spr[page_number] = spr_textbox_default2;
			txtb_9slice_bottom[page_number] = 2;
			txtb_9slice_top[page_number] = 3;
			txtb_9slice_left[page_number] = 2;
			txtb_9slice_right[page_number] = 2;
			
			//bob's voice
			snd[page_number] = snd_text_default_mid;
			
			//how fast bob talks
			text_spd[page_number] = 1;
			
			//how fast bob makes his voice sound
			snd_delay[page_number] = 5;
			
			//how long it takes bob after things like question marks to continue speaking
			text_pause_time[page_number] = 0.25;
		break;
	}
}