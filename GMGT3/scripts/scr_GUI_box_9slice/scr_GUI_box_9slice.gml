//draws a box using a 9slice sprite
function scr_GUI_box_9slice(xpos, ypos, width, height, sprite,animation_frame = 0, viewport = 0){
	
	scr_check_sprite(sprite);
	
	if(!sprite_get_nineslice(sprite).enabled)
	{
		show_error("Passed in sprite does not have 9slice enabled! please make sure it's enabled in the sprite settings under the 9slice tab!",true);	
	}
	
	if(animation_frame == 0)
	{
		SpocPack_9slice_animation_frame += delta_time/1000000 * SpocPack_9slice_animation_speed;
	}
	else
	{
		SpocPack_9slice_animation_frame = animation_frame;	
	}
	
	var pos_x;
	var pos_y;
	
	var scale_x = view_wport[viewport]/camera_get_view_width(view_camera[viewport]);
	var scale_y = view_hport[viewport]/camera_get_view_height(view_camera[viewport]); 
	pos_x = xpos - camera_get_view_x(view_camera[viewport]);
	pos_x = pos_x * scale_x;
	pos_y = ypos - camera_get_view_y(view_camera[viewport]);
	pos_y = pos_y * scale_y;
	
	var wscl = width * scale_x;
	var hscl = height * scale_y;
	
	var sw = sprite_get_width(sprite);
	var sh = sprite_get_height(sprite);
	
	var scaleX = wscl/sw;
	var scaleY = hscl/sh;
	
	var frame = SpocPack_9slice_animation_frame;
			
	draw_sprite_ext(sprite,frame,pos_x,pos_y,scaleX,scaleY,0,c_white,1);
}