//set lerp speed for camera zoom
function scr_set_camera_zoom_lerp_speed(lerp_speed){
	
	scr_check_camera_init();
	
	global.SpocPack_camera_zoom_lerp_speed = lerp_speed;
	
}