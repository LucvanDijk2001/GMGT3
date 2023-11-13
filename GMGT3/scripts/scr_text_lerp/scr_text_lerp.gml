//make some dialogue text lerp!
function scr_text_lerp(first_char,last_char,dist,spd){
	for(var c = first_char; c <= last_char; c++)
	{
		lerp_text[c,page_number-1] = true;
		lerp_speed[c,page_number-1] = spd;
		lerp_dist[c,page_number-1] = dist;
	}
}