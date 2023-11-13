/// this is an example of a bit of code that can be used to continue dialogue from an outside source
if(instance_exists(obj_textbox))
{
	var textbox = instance_find(obj_textbox,0);
	textbox.external_flip = true;
}