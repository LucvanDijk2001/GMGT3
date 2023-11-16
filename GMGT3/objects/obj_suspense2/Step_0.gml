/// @description Insert description here
// You can write your code in this editor
timer--;
if(timer <= 0)
{
	obj_musicHandler.PlaySong(0);
room_goto(R_creative);
}