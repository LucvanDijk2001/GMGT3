function scr_GUI_draw_text_color(xpos,ypos,_string,c1,c2,c3,c4,alpha = 1, viewport = 0){
	var pos_x;
	var pos_y;
	
	var scale_x = view_wport[viewport]/camera_get_view_width(view_camera[viewport]);
	var scale_y = view_hport[viewport]/camera_get_view_height(view_camera[viewport]); 
	pos_x = xpos - camera_get_view_x(view_camera[viewport]);
	pos_x = pos_x * scale_x;
	pos_y = ypos - camera_get_view_y(view_camera[viewport]);
	pos_y = pos_y * scale_y;
	
	draw_text_transformed_color(pos_x,pos_y,_string,scale_x,scale_y,0,c1,c2,c3,c4,alpha);
}