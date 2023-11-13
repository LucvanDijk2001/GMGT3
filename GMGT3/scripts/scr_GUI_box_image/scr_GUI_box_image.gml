//Draws a box on the GUI using an image with view scaling
function scr_GUI_box_image(xpos, ypos, width, height, sprite, image_mode, viewport = 0){

	scr_check_sprite(sprite);

	var sw = sprite_get_width(sprite);
	var sh = sprite_get_height(sprite);
		
	var pos_x;
	var pos_y;
	
	var scale_x = view_wport[viewport]/camera_get_view_width(view_camera[viewport]);
	var scale_y = view_hport[viewport]/camera_get_view_height(view_camera[viewport]); 
	pos_x = xpos - camera_get_view_x(view_camera[viewport]);
	pos_x = pos_x * scale_x;
	pos_y = ypos - camera_get_view_y(view_camera[viewport]);
	pos_y = pos_y * scale_y;
	
	switch(image_mode)
	{
		case SpocPack_im.im_repeat:
			var iterx = 0;
			var itery = 0;
				
			var cw = width;
			var ch = height;
				
			while(cw > sw)
			{
				cw -= sw;
				iterx++;
			}
			while(ch > sh)
			{
				ch -= sh;
				itery++;
			}
			
			var xpercent = cw/sw;
			var ypercent = ch/sh;
			
			var swo = sw;
			var sho = sh;
			
			sw *= scale_x;
			sh *= scale_y;
				
			var i = 0, j = 0;
			for(i = 0; i < iterx+1; i++)
			{
				for(j = 0; j < itery+1; j++)
				{
					if(j == itery && i == iterx)
					{
						draw_sprite_part_ext(sprite,0,0,0,swo*xpercent,sho*ypercent,pos_x+i*sw,pos_y+j*sh,scale_x,scale_y,c_white,1);
					}
					else if(j == itery)
					{
						draw_sprite_part_ext(sprite,0,0,0,swo,sho*ypercent,pos_x+i*sw,pos_y+j*sh,scale_x,scale_y,c_white,1);
					}
					else if (i == iterx)
					{
						draw_sprite_part_ext(sprite,0,0,0,swo*xpercent,sho,pos_x+i*sw,pos_y+j*sh,scale_x,scale_y,c_white,1);
					}
					else
					{
						draw_sprite_ext(sprite,0,pos_x+i*sw,pos_y+j*sh,scale_x,scale_y,0,c_white,1);
					}
				}
			}
		break;
		
		case SpocPack_im.im_stretch:
			var wscl = width * scale_x;
			var hscl = height * scale_y;
		
			var scaleX = wscl/sw;
			var scaleY = hscl/sh;
			
			draw_sprite_ext(sprite,0,pos_x,pos_y,scaleX,scaleY,0,c_white,1);
		break;
	}
}