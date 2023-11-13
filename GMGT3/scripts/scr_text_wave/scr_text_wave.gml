//makes some text wave
function scr_text_wave(first_char,last_char,spd,amp){
	for(var c = first_char; c <= last_char; c++)
	{
		float_text[c,page_number-1] = true;
		float_speed[c,page_number-1] = spd;
		float_amp[c,page_number-1] = amp;
	}
}