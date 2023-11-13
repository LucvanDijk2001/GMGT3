/// @description set IK object
x = obj_playercore.x;
y = obj_playercore.y;

targetx = 0;
targety = 0;

destx = 0;
desty = 0;

speed_ = 0.5;
arm_initialize(100, 100, noone);

arm_pin(x, y);
pinx = x;
piny = y;