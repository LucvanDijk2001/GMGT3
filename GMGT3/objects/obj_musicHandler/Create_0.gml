/// @description Insert description here
// You can write your code in this editor

gamesong = audio_play_sound(snd_song,1,1,0.35);
pausesong = audio_play_sound(snd_paused,1,1,0.7);
winsong = audio_play_sound(snd_finished,1,1,0.7);
menusong = audio_play_sound(snd_menu,1,1,0.7);
audio_sound_gain(gamesong,0,0)
audio_sound_gain(pausesong,0,0);
audio_sound_gain(winsong,0,0);
audio_sound_gain(menusong,0,0);

function PlaySong(argument0)
{
	switch(argument0)
	{
	case 0:
	audio_stop_sound(gamesong);
	gamesong = audio_play_sound(snd_song,1,1,0);
	audio_sound_gain(gamesong,0.35,0);
	break;
	case 1:
	pausesong = audio_play_sound(snd_paused,0.1,1,0);
	audio_sound_gain(pausesong,0.7,300);
	break;
	case 2:
	winsong = audio_play_sound(snd_finished,0.1,1,0);
	audio_sound_gain(winsong,0.7,50);
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
		
		case 1:
		audio_sound_gain(pausesong,argument1,500);
		break;
		
		case 2:
		audio_sound_gain(winsong,argument1,500);
		break;
		
		case 3:
		audio_sound_gain(menusong,argument1,500);
		break;
	}
}