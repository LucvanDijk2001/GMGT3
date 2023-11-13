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