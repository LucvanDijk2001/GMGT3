//draw some transformed extended text on gui in worldspace
function scr_GUI_draw_text_ext_transformed_dialogue(xpos,ypos,_string,_sep,_w,viewport = 0){
	
	scr_check_dialogue_init();
	
	var pos_x;
	var pos_y;
	
	var scale_x = view_wport[viewport]/camera_get_view_width(view_camera[viewport]);
	var scale_y = view_hport[viewport]/camera_get_view_height(view_camera[viewport]); 
	pos_x = xpos - camera_get_view_x(view_camera[viewport]);
	pos_x = pos_x * scale_x;
	pos_y = ypos - camera_get_view_y(view_camera[viewport]);
	pos_y = pos_y * scale_y;
	
	var wscl = 1/global.SpocPack_dialogue_text_scale;
	
	draw_text_ext_transformed(pos_x,pos_y,_string,_sep,_w*wscl,scale_x*global.SpocPack_dialogue_text_scale,scale_y*global.SpocPack_dialogue_text_scale,0)
}