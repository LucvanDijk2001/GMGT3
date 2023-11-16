/// @description Insert description here
// You can write your code in this editor


if(!global.MouseHoldsItem && !global.lost && !in_slot)
{
	 if(!collision_point(mouse_x,mouse_y,obj_dropzone,true,true))
	 {
		 hover = false;
		 global.holdingbutton = true;
		 audio_play_sound(snd_grab, 1, false);
	held = true;
	global.MouseHoldsItem = true;
	 }
}