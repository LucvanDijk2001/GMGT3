/// @description Insert description here
// You can write your code in this editor
if(mouse_check_button_released(mb_left))
{
held = false;	
}
if(held)
{
 phy_position_x = mouse_x;
 phy_position_y = mouse_y;
 phy_linear_velocity_x = 0;
 phy_linear_velocity_y = 0;
 phy_angular_velocity = 0;
 
 if(keyboard_check(ord("A")))
 {
phy_rotation -= 3;	 
 }
 if(keyboard_check(ord("D")))
 {
phy_rotation += 3;	 
 }
}