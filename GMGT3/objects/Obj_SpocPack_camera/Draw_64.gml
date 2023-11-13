//draw for example room
if(room == Room_camera_example)
{
	if(keyboard_check(ord("D")))
	{
		global.SpocPack_camera_xto += 2;
	}
	if(keyboard_check(ord("A")))
	{
		global.SpocPack_camera_xto -= 2;
	}
	if(keyboard_check(ord("W")))
	{
		global.SpocPack_camera_yto -= 2;
	}
	if(keyboard_check(ord("S")))
	{
		global.SpocPack_camera_yto += 2;
	}
	if(keyboard_check(ord("R")))
	{
		scr_set_camera_position_to(global.SpocPack_camera_width/2,global.SpocPack_camera_height/2);	
		scr_set_camera_zoom_to(1);
		scr_set_camera_rotation_to(0);
	}
	draw_set_halign(fa_left);
	draw_text(10,10,"Use WASD to move camera (for this room)");
	draw_text(10,30,"press 'R' to reset camera");
	draw_text(10,50,"posx: " + string(x));
	draw_text(10,70,"posy: " + string(y));
	draw_text(10,90,"zoom: " + string(global.SpocPack_camera_zoom));
	draw_text(10,110,"rotation: " + string(global.SpocPack_camera_rotation));
}