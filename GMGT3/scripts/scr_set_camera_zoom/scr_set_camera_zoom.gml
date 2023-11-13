//sets the zoom for the camera
function scr_set_camera_zoom(zoom){
	scr_check_camera_init();
	global.SpocPack_camera_zoom_to = zoom;
	global.SpocPack_camera_zoom = zoom;
}