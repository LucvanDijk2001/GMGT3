///sets dimensions for the textbox in the dialogue system
function scr_dialogue_set_textbox_dimensions(width, height){
	
	scr_check_dialogue_init();
	
	global.SpocPack_textbox_width = width;
	global.SpocPack_textbox_height = height;
}