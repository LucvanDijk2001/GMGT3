/// @description Insert description here
// You can write your code in this editor





a++;

if(a > 300)
{
instance_destroy();	
}

part_emitter_region(part_sys,part_emit,x-radius,x+radius,y-radius,y+radius,ps_shape_ellipse,ps_distr_linear);