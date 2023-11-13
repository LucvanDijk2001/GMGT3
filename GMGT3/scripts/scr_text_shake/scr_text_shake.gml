//make some text shake
function scr_text_shake(first_char,last_char,amp){
	for(var c = first_char; c <= last_char; c++)
	{
		shake_text[c,page_number-1] = true;
		shake_amp[c,page_number-1] = amp;
	}
}