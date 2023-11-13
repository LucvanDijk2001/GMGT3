//give text some color!
function scr_text_color(first_char,last_char,c1,c2,c3,c4){
	for(var c = first_char; c <= last_char; c++)
	{
		col_1[c,page_number-1] = c1;
		col_2[c,page_number-1] = c2;
		col_3[c,page_number-1] = c3;
		col_4[c,page_number-1] = c4;
	}
}