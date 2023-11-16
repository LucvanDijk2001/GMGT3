/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
part = part_type_create();
part_type_color1(part,c_yellow);
part_type_direction(part,0,360,0,0);
part_type_speed(part,1,3,-0.01,0);
part_type_size(part,0.7,1,-0.002,0);
part_type_life(part,60,180);
part_type_orientation(part,0,360,random_range(-1,1),0,0);
sys = part_system_create();
emit = part_emitter_create(sys);
part_emitter_region(sys,emit,x,x,y,y,ps_shape_ellipse,ps_distr_linear);

dopart = true;
xto = 0;
yto = 0;

animalsprite = noone;
itemsprites = noone;
itemxs = noone;
itemys = noone;
itemrots = noone;
itemflips = noone;