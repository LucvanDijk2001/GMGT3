/// @description 
pinx = x;
piny = y;

grab_speed = 1;
grab_accel = 2;

hand_is_grab = 0;

arm_initialize(180, 3, spr_limb);
arm_pin(pinx, piny);

if x < 170 {
	flip_ = 1;
}
else{
	flip_ = -1;
}

randomx = 170;
randomvelx = 0;
randomaccelx = 0;

randomy = 100;
randomvely = 0;
randomaccely = 0;

arm_move_to(170, 100);

parent = instance_nearest(x,y, obj_armzone);