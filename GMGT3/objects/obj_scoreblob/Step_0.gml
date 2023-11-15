/// @description Insert description here
// You can write your code in this editor
x += (obj_scoreViewer.x-x)/24;
y += (obj_scoreViewer.y-y)/24;

if(distance_to_object(obj_scoreViewer) < 5)
{
	global.score += scr;
	obj_scoreViewer.size = 1.2;
	instance_destroy();
}