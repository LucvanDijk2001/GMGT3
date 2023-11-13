//sets animation speed for 9slice on objects
function scr_GUI_box_9slice_manual_set_animation_speed(frames_per_second){
	
	if (!variable_instance_exists(id, "SpocPack_9slice_animation_frame") || !variable_instance_exists(id, "SpocPack_9slice_animation_speed"))
	{
	    show_error("manual 9slice was not initalized! please make sure to call 'scr_GUI_box_9slice_manual_ini' in your object create event!",true);
	}
	SpocPack_9slice_animation_speed = frames_per_second;
}