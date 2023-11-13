//takes a text id string and creates a textbox displaying id of text
function scr_create_dialogue_box(_text_id, _textbox_img = 0){
	
	scr_check_dialogue_init();
	
	with(instance_create_layer(0,0,"Instances",obj_textbox))
	{
		textbox_img = _textbox_img;
		scr_game_text(_text_id);
	}
}