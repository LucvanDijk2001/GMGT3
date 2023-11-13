//define your menu's in here
function scr_menu(menu_index){
	switch(menu_index)
	{
		case SpocPack_menu.menu_main:
			if(scr_menu_button(20,20,spr_button_default))
			{
				scr_switch_menu(SpocPack_menu.menu_controls);
			}
			global.value = scr_menu_slider(20,40,0,100,global.value,spr_slider_default,spr_knob);
		break;
		
		case SpocPack_menu.menu_controls:
			if(scr_menu_button(20,40,spr_button_default))
			{
				scr_switch_menu(SpocPack_menu.menu_main);
			}
		break;
	}
}
