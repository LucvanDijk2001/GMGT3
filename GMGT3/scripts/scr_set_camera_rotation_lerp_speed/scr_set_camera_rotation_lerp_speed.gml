//set lerp speed for rotating the camera
function scr_set_camera_rotation_lerp_speed(lerp_speed){

	scr_check_camera_init();
	
	global.SpocPack_camera_rotation_lerp_speed = lerp_speed;

}