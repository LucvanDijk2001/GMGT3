/// @description Insert description here
// You can write your code in this editor

gamesong = audio_play_sound(snd_song,1,1,0.35);
audio_sound_gain(gamesong,0,0)

function PlaySong(argument0)
{
	switch(argument0)
	{
	case 0:
	audio_stop_sound(gamesong);
	gamesong = audio_play_sound(snd_song,1,1,0);
	audio_sound_gain(gamesong,0.35,0);
	break;
	}
}

function SetVolume(argument0, argument1)
{
	switch(argument0)
	{
		case 0:
		audio_sound_gain(gamesong,argument1,500);
		break;
	}
}