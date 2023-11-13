// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_menu_button(_x,_y,sprite){
	if(mouse_x > _x-1 && mouse_x < _x+sprite_get_width(sprite)+1 && mouse_y > _y-1 && mouse_y < _y+sprite_get_height(sprite)+1)
	{
		scr_GUI_image_ext(sprite,1,_x,_y,1,1);
		if(mouse_check_button_pressed(mb_left))
		{
				return true;
		}
	}
	else
	{
		scr_GUI_image_ext(sprite,0,_x,_y,1,1);
	}
	
	return false;
	
	
	
}