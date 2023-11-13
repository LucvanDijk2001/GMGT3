//sets the 9slice image for the dialogue box
function scr_dialogue_set_9slice(sprite, left, right, top, bottom){
	
	scr_check_dialogue_init();
	
	global.SpocPack_dialogue_background_9slice = sprite;
	global.SpocPack_dialogue_background_9slice_top = top;
	global.SpocPack_dialogue_background_9slice_bottom = bottom;
	global.SpocPack_dialogue_background_9slice_left = left;
	global.SpocPack_dialogue_background_9slice_right = right;
}