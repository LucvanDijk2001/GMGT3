function scr_check_dialogue_init(){
	if(!variable_global_exists("SpocPack_dialogue_initalized"))
	{
		show_error("Trying to use dialogue functionality without having initialized it! please make sure an instance of 'obj_dialogue_settings' exists! it can be found in SpocPack>Functionalities>Dialogue!",true);
	}
}