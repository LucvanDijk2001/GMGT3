/// @description Insert description here
// You can write your code in this editor

if(!global.lost)
{
vel += random_range(-veladd,veladd);
vel = clamp(vel,-velmax,velmax);
x += lengthdir_x(vel,dir);
y += lengthdir_y(vel,dir);
dirvel += random_range(-diradd,diradd);
dirvel = clamp(dirvel,-dirmax,dirmax);
dir += dirvel;
x = clamp(x,xstart-maxmove,xstart+maxmove);
y = clamp(y,ystart-maxmove,ystart+maxmove);
}
else
{
	x += lengthdir_x(lspd,lostdir);
	y += lengthdir_y(lspd,lostdir);
}
