//set camera rotation
function scr_set_camera_rotation(rotation){
	
	scr_check_camera_init();
	
	global.SpocPack_camera_rotation = rotation;
	global.SpocPack_camera_rotation_to = rotation;
	
}