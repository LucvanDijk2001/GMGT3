/// @description Insert description here
// You can write your code in this editor
veladd = 0;
velmax = 2;
diradd = 0;
dirmax = 5;
maxmove = 0;
dest = false;
veladd = 0.05;
velmax = 5;
diradd = 0.5;
dirmax = 15;
maxmove = 1;

vel = 0;
acc = 0;

dir = 0;
dirvel = 0;
diracc = 0;

radius = 3;
part_sys = part_system_create();
part_system_depth(part_sys,depth+10);
//part_system_layer(part_sys,layer);

part_emit = part_emitter_create(part_sys);


part = part_type_create();
part_type_sprite(part,spr_blob,false,true,true);
part_type_size(part,1,1.2,-0.008,0);
part_type_life(part,2*30,4*30);


part_emitter_stream(part_sys,part_emit,part,radius*(1/3));



