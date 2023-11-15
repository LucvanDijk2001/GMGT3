/// @description Insert description here
// You can write your code in this editor
if (phy_linear_velocity_x > 100 or phy_linear_velocity_y > 100) and audioing = false{
	audio_play_sound(snd_thump, 1, false);
	audioing = true;
}