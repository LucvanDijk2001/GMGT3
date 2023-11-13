//draw a slider
function scr_menu_slider(_x,_y,_min,_max,_val,sprite,knobSprite){
	var sliderwidth = sprite_get_width(sprite);
	var percent = (((_val - _min)) / (_max - _min));
	var offset = sliderwidth*percent;
	scr_GUI_image_ext(sprite,0,_x,_y,1,1);
	scr_GUI_image_ext(knobSprite,0,_x+offset,_y,1,1);
	var knobwidth = sprite_get_width(knobSprite);
	var knobheight = sprite_get_height(knobSprite);
	if(mouse_check_button_pressed(mb_left))
	{
		if(!SpocPack_slider_held)
		{
			if(mouse_x > _x+offset-knobwidth/2 && mouse_x < _x+offset+knobwidth/2 && mouse_y > _y-knobheight/2 && mouse_y < _y+knobheight/2)
			{
				SpocPack_slider_held = true;	
			}
		}
	}
	if(mouse_check_button_released(mb_left))
	{
		SpocPack_slider_held = false;	
	}
	
	if(SpocPack_slider_held)
	{
		var percentm = (((mouse_x - _x)) / (_x+sliderwidth - _x));
		_val = _max-_min;
		_val *= percentm;
	}
	
	_val = clamp(_val,_min,_max);
	
	return _val;
}