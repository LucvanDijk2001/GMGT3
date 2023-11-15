/// @description Insert description here
// You can write your code in this editor
x += (lifeblob.x-x)/12;
y += (lifeblob.y-y)/12;

if(distance_to_object(lifeblob) < 2)
{
	lifeblob.dest = true;
	instance_destroy();
}