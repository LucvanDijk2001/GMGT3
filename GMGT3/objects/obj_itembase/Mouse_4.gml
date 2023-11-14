/// @description Insert description here
// You can write your code in this editor


if(!global.MouseHoldsItem)
{
	 if(!collision_point(mouse_x,mouse_y,obj_dropzone,true,true))
	 {
		 hover = false;
	held = true;
	global.MouseHoldsItem = true;
	 }
}