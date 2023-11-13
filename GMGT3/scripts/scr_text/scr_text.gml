//this function is used to add a text/page to a dialogue in the scr_game_text script
/// @param text
/// @param [character]
/// @param [side]
function scr_text(_text){
	scr_set_defaults_for_text();
	text[page_number] = _text;
	
	//get character info
	if(argument_count > 1)
	{
		scr_dialogue_characters(argument[1]);
	} else
	if(argument_count > 2)
	{
		speaker_side[page_number] = argument[2];
	}
	else
	{
		snd[page_number] = snd_text_default_mid;
	}
	page_number++;
}