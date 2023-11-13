//drag and drop an object with specified button, will snap back to starting position when released
function scr_dragndrop_return_to_start_lerp(button,lerpspeed){
	if (!variable_instance_exists(id, "SpocPack_dndheld"))
	{
	    show_error("Drag and drop was not initalized! please make sure to call 'scr_dragndrop_ini' in your object create event!",true);
	}
	
	if(mouse_check_button_pressed(button))
	{
		if(collision_point(mouse_x,mouse_y,self,true,false))
		{
			SpocPack_dndheld = true;
		}
	}
	
	if(mouse_check_button_released(button))
	{
		SpocPack_dndheld = false;
	}
	
	if(SpocPack_dndheld)
	{
		x = mouse_x;
		y = mouse_y;
	}
	else
	{
		x += (xstart-x)/lerpspeed;
		y += (ystart-y)/lerpspeed;
	}
}