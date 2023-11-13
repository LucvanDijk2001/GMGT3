/// @description move
x = obj_playercore.x;
y = obj_playercore.y;
arm_move_to(pinx, piny);

if distance_to_point(pinx, piny) > arm_length{
		arm_pinned = false;
		arm_pin(obj_playercore.x, obj_playercore.y);
		pinx = obj_playercore.x;
		piny = obj_playercore.y;
}
arm_reconnect();