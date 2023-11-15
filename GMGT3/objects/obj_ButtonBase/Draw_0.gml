/// @description Insert description here
// You can write your code in this editor
if(in_slot)
{
	a -= 0.01;	
}
if(a <= 0)
{
	if(sprite_index == spr_menubutton_start)
	{
		var fd = instance_create_layer(-10,-10,"pauselayer",obj_fadeout);
		fd.rm = Room_suspense;
	}
	if(sprite_index == spr_menubutton_quit)
	{
	var fd = instance_create_layer(-10,-10,"pauselayer",obj_fadeout);
		fd.isquit = true;
	}
	instance_destroy();	
}
draw_sprite_ext(sprite_index,0,phy_position_x,phy_position_y,image_xscale,1,phy_rotation*-1,c_white,a);