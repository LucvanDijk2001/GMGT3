/// @description hover towards player
if(distance_to_object(obj_playercore) <= 50){
	move_towards_point(obj_playercore.x, obj_playercore.y, speed_);
	speed_ += accel_;
	speed_ = clamp(speed_, -max_speed_, max_speed_);
}