/// @description Insert description here
// You can write your code in this editor
if(mouse_check_button_released(mb_left))
{
	if(held)
	{
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
		var ctype = "creature"
		var ccheck = instance_create_layer(x,y,layer,obj_collisionchecker);
		ccheck.direction = phy_rotation;
		ccheck.sprite_index = sprite_index;
		with(ccheck)
		{
			if(place_meeting(x,y,obj_creaturebase))
			{
				collided = true;
			}
			if(place_meeting(x,y,obj_decoration))
			{
			    collided = true;	
				ctype = "decor"
			}
			instance_destroy();
		}

		if(collided)
		{
			var cre;
			if(ctype == "creature")
			{
			var cre = instance_nearest(x,y,obj_creaturebase);
			}
			else if (ctype == "decor")
			{
			var cre = instance_nearest(x,y,obj_decoration).paren;
			}
			var deco = instance_create_layer(x,y,"decolayer",obj_decoration);
			deco.sprite_index = sprite_index;
			deco.image_angle = phy_rotation*-1;
			deco.x = x;
			deco.y = y;
			if(flipped)
			{
			deco.flipped = true;
			deco.image_xscale *= -1;
			}
			deco.paren = self;
			
			deco.paren = cre;
			deco.offx = deco.paren.x-x;
            deco.offy = deco.paren.y-y;
			cre.demonic += demonic;
			cre.abyssal += abyssal;
			cre.void += void;
			cre.badass += badass;
			cre.creepy += creepy;
			cre.mutant += mutant;
			array_push(cre.decos,deco);
			cre.addDeco(deco);
			instance_destroy();
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

scl = 1.2;
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


if(phytimer <= 0)
{
	if(!phy_active)
	{
		phy_active = true;	
		if(left)
		{
			var dir = random_range(30,50);
			var vel = random_range(270,370);
			phy_linear_velocity_x = lengthdir_x(vel,dir);
			phy_linear_velocity_y = lengthdir_y(vel,dir);
		}
		else
		{
			var dir = random_range(130,150);
			var vel = random_range(270,370);
			phy_linear_velocity_x = lengthdir_x(vel,dir);
			phy_linear_velocity_y = lengthdir_y(vel,dir);
		}
	}
}
else
{
	phytimer--;
	phy_position_x += (movetox - phy_position_x)/8;
	phy_position_y += (movetoy - phy_position_y)/8;
}

