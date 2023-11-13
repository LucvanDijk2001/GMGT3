//draw some transformed extended text on gui in worldspace
function scr_GUI_draw_text_ext_transformed(xpos,ypos,_string,_sep,_w,xscale,yscale,viewport = 0){
	var pos_x;
	var pos_y;
	
	var scale_x = view_wport[viewport]/camera_get_view_width(view_camera[viewport]);
	var scale_y = view_hport[viewport]/camera_get_view_height(view_camera[viewport]); 
	pos_x = xpos - camera_get_view_x(view_camera[viewport]);
	pos_x = pos_x * scale_x;
	pos_y = ypos - camera_get_view_y(view_camera[viewport]);
	pos_y = pos_y * scale_y;
	
	draw_text_ext_transformed(pos_x,pos_y,_string,_sep,_w,scale_x*xscale,scale_y*yscale,0)
}