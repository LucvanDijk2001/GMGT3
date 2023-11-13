// @description move

// X input check
var hinput = keyboard_check(vk_right) - keyboard_check(vk_left);
if hinput != 0 {
	hspeed_ += sign(hinput) * haccel_;
	hspeed_ = clamp(hspeed_, -max_hspeed_, max_hspeed_);
	//change momentum direction only when key is pressed
} else {
	hspeed_ = lerp(hspeed_, 0, .015);
}

if place_meeting(x+hspeed_, y, obj_wall){
	while !place_meeting(x+sign(hspeed_), y, obj_wall){
		x += sign(hspeed_);
	}
	hspeed_ = 0;
}
x += hspeed_;

// Y input check
vspeed_ += gravity_;
var vinput = keyboard_check(vk_up) - keyboard_check(vk_down);
if vinput != 0 {
	vspeed_ -= sign(vinput) * vaccel_;
	vspeed_ = clamp(vspeed_, -max_vspeed_, max_vspeed_);
	//change momentum direction only when key is pressed
} else {
	vspeed_ = lerp(vspeed_, 0, .015);
}

if place_meeting(x, y+vspeed_, obj_wall){
	while !place_meeting(x, y+sign(vspeed_), obj_wall){
		y += sign(vspeed_);
	}
	vspeed_ = 0;
}
y += vspeed_;

