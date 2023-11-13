//use a drag and drop script using specified button that snaps back to origin position
scr_dragndrop_return_to_start(mb_left);

//check if object is being dragged
if(scr_dragndrop_get_is_held())
{
	image_index = 1;	
}
else
{
	image_index = 0;	
}