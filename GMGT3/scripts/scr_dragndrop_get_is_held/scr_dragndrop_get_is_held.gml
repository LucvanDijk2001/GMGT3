//returns true or false based on if objects i held or not
function scr_dragndrop_get_is_held(){
	if (!variable_instance_exists(id, "SpocPack_dndheld"))
	{
	    show_error("Drag and drop was not initalized! please make sure to call 'scr_dragndrop_ini' in your object create event!",true);
	}
	
	return SpocPack_dndheld;
}