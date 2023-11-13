/// @description Insert description here
// You can write your code in this editor
if(mouse_check_button_released(mb_left))
{
	if(held)
	{
		global.MouseHoldsItem = false;
		held = false;	
		
		var throwspeed = point_distance(pmx,pmy,mouse_x,mouse_y);
		var throwdir = point_direction(pmx,pmy,mouse_x,mouse_y);
		
		phy_linear_velocity_x = lengthdir_x(throwspeed,throwdir)*50;
		phy_linear_velocity_y = lengthdir_y(throwspeed,throwdir)*50;
		//physics_apply_force()
		//show_error("throwspeed " + string(throwdir),true);
	}
}
if(held)
{
 phy_position_x = mouse_x;
 phy_position_y = mouse_y;
 phy_linear_velocity_x = 0;
 phy_linear_velocity_y = 0;
 phy_angular_velocity = 0;
 
 var mdir = mouse_wheel_down() - mouse_wheel_up();
 phy_rotation += mdir * 15;
 
 if(keyboard_check(ord("A")))
 {
phy_rotation -= 2;	 
 }
 if(keyboard_check(ord("D")))
 {
phy_rotation += 2;	 
 }
}
mu--;
if(mu <= 0)
{
	mu += 3;
pmx = mouse_x;
pmy = mouse_y;
}
life--;
if(life <= 0)
{
size-= 0.05;
if(size <= 0)
{
instance_destroy();	
}
}