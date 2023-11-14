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
		switch(global.speaksound)
		{
		case 0:
		snd[page_number] = snd_text_default_bop;
		break;
		
		case 1:
		snd[page_number] = snd_text_abysc;
		break;
		
		case 2:
		snd[page_number] = snd_text_ghost;
		break;
		
		case 3:
		snd[page_number] = snd_text_demon;
		break;
		
		case 4:
		snd[page_number] = snd_text_skelly;
		break;
		}
		
	}
	page_number++;
}