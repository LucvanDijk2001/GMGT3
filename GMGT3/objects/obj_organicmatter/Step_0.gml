/// @description hover towards player
if(distance_to_object(obj_playercore) <= 50 || pickedup){
	if(!pickedup)
	{
		obj_playercore.growth += 1;
	pickedup = true;
	}
	
	if(distance_to_object(obj_playercore) > 30)
	{
	spdto = 1;	
	}
	else
	{
	spdto = 0.25;	
	}

	
	dir = point_direction(x,y,obj_playercore.x,obj_playercore.y) + random_range(-10,10);
	hspd += lengthdir_x(spd,dir)*racc;
	vspd += lengthdir_y(spd,dir)*racc;
	hspd = clamp(hspd,-maxspd*racc,maxspd*racc);
	vspd = clamp(vspd,-maxspd*racc,maxspd*racc);
	x += hspd;
	y += vspd;
}

spd += (spdto-spd)/8;

if(pickedup)
{
depthsin += 0.1 * random_range(0.9,1.1);
depth = obj_playercore.depth+sin(depthsin)*2;
}