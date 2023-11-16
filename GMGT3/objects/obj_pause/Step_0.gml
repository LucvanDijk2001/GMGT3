/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(vk_escape))
{
	if(room == R_playertest_luc || room == R_creative)
	{
		if(!paused)
		{
			instance_deactivate_all(true);	
			instance_activate_object(obj_cursor);
			paused = true;
			option = 0;
			if(room == R_playertest_luc || room == R_creative)
			{
			obj_musicHandler.SetVolume(0,0.00);
			obj_musicHandler.SetVolume(1,0.70);
			}
		}
		else
		{
			instance_activate_all();
			paused = false;
			if(room == R_playertest_luc || room == R_creative)
			{
			obj_musicHandler.SetVolume(0,0.35);
			obj_musicHandler.SetVolume(1,0.00);
		}
		}
	}
}