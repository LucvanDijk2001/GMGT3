/// @description Insert description here
// You can write your code in this editor
a += (1-a)/32;
if(a >= 0.99)
{
	obj_musicHandler.SetVolume(0,0);
room_goto(Room_suspense);
}