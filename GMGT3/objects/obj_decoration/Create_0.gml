/// @description Insert description here
// You can write your code in this editor
parent = instance_nearest(x,y,obj_creaturebase);
flipped = false;
offx = parent.x-x;
offy = parent.y-y;
rot = 0;
depth-=global.placeDepth;
global.placeDepth++;