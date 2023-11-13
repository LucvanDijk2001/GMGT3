//draw an image on gui
function scr_GUI_image_ext(sprite,img,_x,_y,xscale,yscale,rot = 0,col = c_white,alpha = 1, viewport = 0){
	var pos_x;
	var pos_y;
	
	var scale_x = view_wport[viewport]/camera_get_view_width(view_camera[viewport]);
	var scale_y = view_hport[viewport]/camera_get_view_height(view_camera[viewport]); 
	pos_x = _x - camera_get_view_x(view_camera[viewport]);
	pos_x = pos_x * scale_x;
	pos_y = _y - camera_get_view_y(view_camera[viewport]);
	pos_y = pos_y * scale_y;
	
	draw_sprite_ext(sprite,img,pos_x,pos_y,scale_x * xscale,scale_y * yscale,rot,col,alpha);
}