//sets the global value for line seperation in dialogue boxes
function scr_dialogue_set_line_sep(line_sep){
	scr_check_dialogue_init();
	global.SpocPack_dialogue_line_sep = line_sep;
}