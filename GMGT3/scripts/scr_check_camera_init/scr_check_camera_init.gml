function scr_check_camera_init(){
	if(!variable_global_exists("SpocPack_camera_init"))
	{
		show_error("Trying to use camera functionality without having initialized it! please make sure an instance of 'obj_SpocPack_camera' exists! it can be found in SpocPack>Functionalities>Camera!",true);
	}
}