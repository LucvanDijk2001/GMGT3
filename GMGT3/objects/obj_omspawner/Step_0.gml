/// @description 
spawn_timer ++;
if(spawn_timer == spawn_th){
	instance_create_layer(irandom(room_width), irandom(room_height),"Instances", obj_organicmatter);
	spawn_timer = 0;
}