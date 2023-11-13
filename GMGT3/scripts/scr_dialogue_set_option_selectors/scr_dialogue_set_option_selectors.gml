//sets select keys for options
function scr_dialogue_set_option_selectors(previouskey,nextkey){
	
	scr_check_dialogue_init();
	
	global.SpocPack_dialogue_option_next = previouskey;
	global.SpocPack_dialogue_option_previous = nextkey;
}