//use a drag and drop script using specified button
scr_dragndrop(mb_left);

//check if object is being dragged
if(scr_dragndrop_get_is_held())
{
	image_index = 1;	
}
else
{
	image_index = 0;	
}