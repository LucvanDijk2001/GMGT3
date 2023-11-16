/// @description Insert description here
// You can write your code in this editor
if(mouse_check_button_released(mb_left))
{
	if(held)
	{
		global.holdingbutton = false;
		scl = 1;
		global.MouseHoldsItem = false;
		held = false;	
		
		var throwspeed = point_distance(pmx,pmy,mouse_x,mouse_y);
		var throwdir = point_direction(pmx,pmy,mouse_x,mouse_y);
		
		phy_linear_velocity_x = lengthdir_x(throwspeed,throwdir)*50;
		phy_linear_velocity_y = lengthdir_y(throwspeed,throwdir)*50;
		//physics_apply_force()
		//show_error("throwspeed " + string(throwdir),true);
		
		var collided = false;
		var ccheck = instance_create_layer(x,y,layer,obj_collisionchecker);
		ccheck.direction = phy_rotation;
		ccheck.sprite_index = sprite_index;
		with(ccheck)
		{
			if(place_meeting(x,y,obj_buttonSlot))
			{
				collided = true;
			}
			instance_destroy();
		}

		if(!flipped && abs(phy_rotation%360) < 30 && abs(phy_rotation%360) > -30||!flipped && abs(phy_rotation%360) > 330)
		{
		if(collided)
		{
			in_slot = true;
			phy_active = false;
			phy_rotation = 0;
			phy_position_x = obj_buttonSlot.x;
			phy_position_y = obj_buttonSlot.y;
			audio_play_sound(snd_casette,1,0);
		}
		else
		{
		audio_play_sound(snd_toss, 1, false);	
		}
		}
	}
}

if(mouse_check_button_pressed(mb_right))
{
	if(held)
	{
		flipped = !flipped;
		image_xscale *= -1;	
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
 phy_rotation += mdir * 25;
 
 if(keyboard_check(ord("A")))
 {
phy_rotation -= 4;	 
 }
 if(keyboard_check(ord("D")))
 {
phy_rotation += 4;	 
 }
 
 if(collision_point(mouse_x,mouse_y,obj_dropzone,true,true))
	{
	held = false;	
	global.MouseHoldsItem = false;
	var throwspeed = point_distance(pmx,pmy,mouse_x,mouse_y);
		var throwdir = point_direction(pmx,pmy,mouse_x,mouse_y);
		
		phy_linear_velocity_x = lengthdir_x(throwspeed,throwdir)*20;
		phy_linear_velocity_y = lengthdir_y(throwspeed,throwdir)*20;
	}	
}
mu--;
if(mu <= 0)
{
	mu += 3;
pmx = mouse_x;
pmy = mouse_y;
}

