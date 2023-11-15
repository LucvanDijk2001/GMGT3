/// @description Insert description here
// You can write your code in this editor



vel += random_range(-veladd,veladd);
vel = clamp(vel,-velmax,velmax);
x += lengthdir_x(vel,dir);
y += lengthdir_y(vel,dir);
dirvel += random_range(-diradd,diradd);
dirvel = clamp(dirvel,-dirmax,dirmax);
dir += dirvel;
x = clamp(x,xstart-maxmove,xstart+maxmove);
y = clamp(y,ystart-maxmove,ystart+maxmove);



part_emitter_region(part_sys,part_emit,x-radius,x+radius,y-radius,y+radius,ps_shape_ellipse,ps_distr_linear);

if(dest)
{
	for(var i = 0; i < irandom_range(4,7); i++)
	{
		var b = instance_create_layer(x,y,"Itemspawnlayer",obj_blobulordparticle);	
		b.phy_position_x = x;
		b.phy_position_y = y;
		
		var ndir = random(360);
		var force = random_range(200,350);
b.phy_linear_velocity_x = lengthdir_x(force,ndir);
b.phy_linear_velocity_y = lengthdir_y(force,ndir);
	}
	
part_emitter_clear(part_sys,part_emit);
with(instance_nearest(x,y,obj_blobulordeyesmall))
{
instance_destroy();	
}
instance_destroy();
}