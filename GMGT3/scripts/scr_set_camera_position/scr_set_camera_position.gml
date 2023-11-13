//sets the camera position instantly
function scr_set_camera_position(xpos,ypos){

	scr_check_camera_init();
	
	global.SpocPack_camera_xto = xpos;
	global.SpocPack_camera_yto = ypos;
	global.SpocPack_camera_x = xpos;
	global.SpocPack_camera_y = ypos;
	
}