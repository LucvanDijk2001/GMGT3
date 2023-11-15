/// @description Insert description here
// You can write your code in this editor


if(paused)
{
	


if(pmx != mouse_x || pmy!= mouse_y)
{
	if(mouse_x > 80 && mouse_x < 260)
	{
		var spc = 10;
		if (mouse_y > 170-30-spc && mouse_y < 170-30+spc)
		{
			option = 0;	
		}
		if (mouse_y > 170-spc && mouse_y < 170+spc)
		{
			option = 1;	
		}
		if (mouse_y > 170+30-spc && mouse_y < 170+30+spc)
		{
			option = 2;	
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
optionchanged = true;
}
if(keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S")))
{
	option++;
optionchanged = true;
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

if(option >= 0 && option <= 2)
{
	if(keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_enter) || mouse_check_button_pressed(mb_left))
	{
		if(option == 0)
		{
			instance_activate_all();
			paused = false;
			if(room = R_playertest_luc)
			{
			obj_musicHandler.SetVolume(0,0.35);	
			}
		}
		if(option == 1)
		{
			instance_activate_all();
				paused = false;
			if(room = R_playertest_luc)
			{
			obj_musicHandler.SetVolume(0,0.35);	
			instance_create_layer(-10,-10,"pauselayer",obj_fadeout);
			}
	
		}
		if(option == 2)
		{
		game_end();	
		}
	}
}

pmx = mouse_x;
pmy = mouse_y;