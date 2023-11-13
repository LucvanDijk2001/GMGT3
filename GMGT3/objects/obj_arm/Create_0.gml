/// @description 
pinx = x;
piny = y;

grab_speed = 1;
grab_accel = 0.9;

hand_is_grab = 0;

arm_initialize(200, 3, noone);
arm_pin(pinx, piny);

if x < 170 {
	flip_ = 1;
}
else{
	flip_ = -1;
}