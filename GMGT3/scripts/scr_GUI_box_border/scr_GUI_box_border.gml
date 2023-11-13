//Draws a box on the GUI with a border following view scaling
function scr_GUI_box_border(xpos, ypos, width, height, borderwidth, color, bordercolor, viewport = 0){
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
	
	draw_set_color(bordercolor);
	draw_rectangle(pos_x,pos_y,pos_x+wscl,pos_y+hscl,false);
	draw_set_color(color);
	draw_rectangle(pos_x+borderwidth*scale_x,pos_y+borderwidth*scale_y,pos_x+wscl-borderwidth*scale_x,pos_y+hscl-borderwidth*scale_y,false);
}