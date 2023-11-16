/// @description Insert description here
// You can write your code in this editor


if(paused)
{
	
draw_set_font(global.SpocPack_font_main);

if(pmx != mouse_x || pmy!= mouse_y)
{
	if(mouse_x > 80 && mouse_x < 260)
	{
		var spc = 10;
		if (mouse_y > 170-30-spc && mouse_y < 170-30+spc)
		{
			if(option != 0)
			{
			option = 0;	
			audio_play_sound(snd_put1,1,0);
			}
		}
		if (mouse_y > 170-spc && mouse_y < 170+spc)
		{
			if(option != 1)
			{
			option = 1;	
			audio_play_sound(snd_put1,1,0);
			}
		}
		if (mouse_y > 170+30-spc && mouse_y < 170+30+spc)
		{
			if(option != 2)
			{
			option = 2;	
			audio_play_sound(snd_put1,1,0);
			}	
		}
	}
	else
	{
		option = 3;	
	}
}
else
{
	if(keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")))
{
	option--;
	audio_play_sound(snd_put1,1,0);
optionchanged = true;
}
if(keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S")))
{
	option++;
optionchanged = true;
audio_play_sound(snd_put1,1,0);
}	
if(optionchanged)
{
	optionchanged = false;
option = clamp(option,0,2);
}
}

	
var wincol = make_color_rgb(15,0,13);
draw_set_color(wincol);
draw_set_alpha(0.5);
draw_rectangle(-10,-10,400,400,false);

draw_set_alpha(1);
a += 0.01;
b += 0.015;
c += 0.0083;
draw_set_halign(fa_center);
draw_set_color(c_white);
if(option == 0){draw_set_color(c_yellow);}
draw_text_transformed(170,170-30,"Resume",2,2,sin(a)*5);
draw_set_color(c_white);
if(option == 1){draw_set_color(c_yellow);}
draw_text_transformed(170,170,"Main menu",2,2,sin(b)*5);
draw_set_color(c_white);
if(option == 2){draw_set_color(c_yellow);}
draw_text_transformed(170,170+30,"Useless button",2,2,sin(b)*5);
}

if(paused)
{
if(option >= 0 && option <= 2)
{
	if(keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter) || mouse_check_button_pressed(mb_left))
	{
		audio_play_sound(snd_put2,1,0);
		if(option == 0)
		{
			instance_activate_all();
			paused = false;
			if(room = R_playertest_luc || room == R_creative)
			{
			obj_musicHandler.SetVolume(0,0.35);
			obj_musicHandler.SetVolume(1,0.00);
			}
		}
		if(option == 1)
		{
			instance_activate_all();
				paused = false;
			if(room = R_playertest_luc || room == R_creative)
			{
			obj_musicHandler.SetVolume(1,0);
			var fd = instance_create_layer(-10,-10,"pauselayer",obj_fadeout);
			fd.rm = R_Menu;
			}
	
		}
		if(option == 2)
		{
		game_end();	
		}
	}
}
}
pmx = mouse_x;
pmy = mouse_y;