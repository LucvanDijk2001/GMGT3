//set the xto and yto position of the camera (makes it lerp to that position)
function scr_set_camera_position_to(xto,yto){
	
	scr_check_camera_init();
	
	global.SpocPack_camera_xto = xto;
	global.SpocPack_camera_yto = yto;
}