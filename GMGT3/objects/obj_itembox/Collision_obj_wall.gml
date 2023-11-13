/// @description Insert description here
// You can write your code in this editor
if(phy_speed > 9)
{
	var i1 = instance_create_layer(x,y,layer,obj_banan);	
	var i2 = instance_create_layer(x,y,layer,obj_banan);	
	var i3 = instance_create_layer(x,y,layer,obj_banan);	
	
	var spd = random_range(100,1000);
	var dir = random(360);
	i1.phy_linear_velocity_x = lengthdir_x(spd,dir);
	i1.phy_linear_velocity_y = lengthdir_y(spd,dir);
	i1.phy_angular_velocity = random_range(-200,200);
	
	var spd = random_range(100,1000);
	var dir = random(360);
	i2.phy_linear_velocity_x = lengthdir_x(spd,dir);
	i2.phy_linear_velocity_y = lengthdir_y(spd,dir);
	i2.phy_angular_velocity = random_range(-200,200);
	
	var spd = random_range(100,1000);
	var dir = random(360);
	i3.phy_linear_velocity_x = lengthdir_x(spd,dir);
	i3.phy_linear_velocity_y = lengthdir_y(spd,dir);
	i3.phy_angular_velocity = random_range(-200,200);
	
	var p1 = instance_create_layer(x,y,layer,obj_boxpiece);
	var p2 = instance_create_layer(x,y,layer,obj_boxpiece);
	var p3 = instance_create_layer(x,y,layer,obj_boxpiece);
	var p4 = instance_create_layer(x,y,layer,obj_boxpiece);
	var p5 = instance_create_layer(x,y,layer,obj_boxpiece);
	p1.image_index = 0;
	p2.image_index = 1;
	p3.image_index = 2;
	p4.image_index = 3;
	p5.image_index = 4;
	
	var spd = random_range(100,1000);
	var dir = random(360);
	p1.phy_linear_velocity_x = lengthdir_x(spd,dir);
	p1.phy_linear_velocity_y = lengthdir_y(spd,dir);
	p1.phy_angular_velocity = random_range(-400,400);
	
	var spd = random_range(100,1000);
	var dir = random(360);
	p2.phy_linear_velocity_x = lengthdir_x(spd,dir);
	p2.phy_linear_velocity_y = lengthdir_y(spd,dir);
	p2.phy_angular_velocity = random_range(-400,400);
	
	var spd = random_range(100,1000);
	var dir = random(360);
	p3.phy_linear_velocity_x = lengthdir_x(spd,dir);
	p3.phy_linear_velocity_y = lengthdir_y(spd,dir);
	p3.phy_angular_velocity = random_range(-400,400);
	
	var spd = random_range(100,1000);
	var dir = random(360);
	p4.phy_linear_velocity_x = lengthdir_x(spd,dir);
	p4.phy_linear_velocity_y = lengthdir_y(spd,dir);
	p4.phy_angular_velocity = random_range(-400,400);
	
	var spd = random_range(100,1000);
	var dir = random(360);
	p5.phy_linear_velocity_x = lengthdir_x(spd,dir);
	p5.phy_linear_velocity_y = lengthdir_y(spd,dir);
	p5.phy_angular_velocity = random_range(-400,400);
	
	instance_destroy();
}