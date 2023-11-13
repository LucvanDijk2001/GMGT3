//increase zoom level
zoom_level++;
if(zoom_level > 2)
{
	zoom_level = 0;	
}

//set camera zoom based on zoom level
switch(zoom_level)
{
	case 0:
		scr_set_camera_zoom_to(.5);
	break;
	
	case 1:
		scr_set_camera_zoom_to(1);
	break;
	
	case 2:
		scr_set_camera_zoom_to(1.5);
	break;
}
