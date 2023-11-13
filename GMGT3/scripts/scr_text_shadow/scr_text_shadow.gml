//gives shadow to some text
function scr_text_shadow(first_char,last_char,col,x_offset,y_offset){
	for(var c = first_char; c <= last_char; c++)
	{
		shadow_text[c,page_number-1] = true;
		shadow_color[c,page_number-1] = col;
		shadow_x_offset[c,page_number-1] = x_offset;
		shadow_y_offset[c,page_number-1] = y_offset;
	}
}