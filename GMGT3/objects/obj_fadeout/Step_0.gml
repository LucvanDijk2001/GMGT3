/// @description Insert description here
// You can write your code in this editor
a += (1-a)/32;
if(a >= 0.99)
{
	if(!isquit)
	{
		if(room == R_playertest_luc)
		{
		obj_musicHandler.SetVolume(0,0);
		}
	
		room_goto(rm);
	}
	else
	{
		game_end();	
	}
}