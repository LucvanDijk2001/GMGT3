//draws a box using a 9slice sprite
function scr_GUI_box_9slice_manual(xpos, ypos, width, height, sprite, left, right, top, bottom, animation_frame = 0, alpha = 1, viewport = 0){
	
	if (!variable_instance_exists(id, "SpocPack_9slice_animation_frame") || !variable_instance_exists(id, "SpocPack_9slice_animation_speed"))
	{
	    show_error("manual 9slice was not initalized! please make sure to call 'scr_GUI_box_9slice_manual_ini' in your object create event!",true);
	}
	
	scr_check_sprite(sprite);

	if(animation_frame == 0)
	{
		SpocPack_9slice_animation_frame += delta_time/1000000 * SpocPack_9slice_animation_speed;
	}
	else
	{
		SpocPack_9slice_animation_frame = animation_frame;	
	}
	
	var pos_x;
	var pos_y;
	
	if (xpos+width < xpos)
	{
		var wsub = xpos+width;
		var xx = xpos;
		xpos = xpos+width;
		width = xx-wsub;	
	}
	if(ypos+height < ypos)
	{
		var hsub = ypos+height;
		var yy = ypos;
		ypos = ypos+height;
		height = yy-hsub;
	}
	
	var scale_x = view_wport[viewport]/camera_get_view_width(view_camera[viewport]);
	var scale_y = view_hport[viewport]/camera_get_view_height(view_camera[viewport]); 
	pos_x = xpos - camera_get_view_x(view_camera[viewport]);
	pos_x = pos_x * scale_x;
	pos_y = ypos - camera_get_view_y(view_camera[viewport]);
	pos_y = pos_y * scale_y;
	
	var wscl = width * scale_x;
	var hscl = height * scale_y;
	
	var sw = sprite_get_width(sprite);
	var sh = sprite_get_height(sprite);
	
	#region slice sizes
	//inti all vars
	var slicewtl,slicehtl,slicewt,sliceht,slicewtr,slicehtr,slicewl,slicehl,slicewm,slicehm,slicewr,slicehr,slicewbl,slicehbl,slicewb,slicehb,slicewbr,slicehbr;
	
	//corners
	//top left
	slicewtl = left;
	slicehtl = top;
	
	//top right
	slicewtr = right;
	slicehtr = top;
	
	//bottom left
	slicewbl = left;
	slicehbl = bottom;
	
	//bottom right
	slicewbr = right;
	slicehbr = bottom;
	
	//edges
	//top
	slicewt = sw-left-right;
	sliceht = top;
	
	//left
	slicewl = left;
	slicehl = sh-top-bottom;
	
	//right
	slicewr = right;
	slicehr = sh-top-bottom;
	
	//bottom
	slicewb = sw-left-right;
	slicehb = bottom;
	
	//middle
	slicewm = sw-left-right;
	slicehm = sh-top-bottom;

	#endregion
	
	//draw_sprite_ext(sprite,0,pos_x,pos_y,scaleX,scaleY,0,c_white,1);
	
	var p1x = pos_x+scale_x*slicewtl;
	var p1y = pos_y+scale_y*slicehtl;
	var p2x = pos_x+wscl-scale_x*slicewbr;
	var p2y = pos_y+hscl-scale_y*slicehbr;
	
	var frame = SpocPack_9slice_animation_frame;
	
	
	#region middle
	var middlewidth = (pos_x+wscl-scale_x*slicewtr) - (pos_x+slicewtl*scale_x);
	var middleheight = (pos_y+hscl-scale_y*slicehbl) - (pos_y+slicehtl*scale_y);
	var middleleftwidht = middlewidth;
	var middleleftheight = middleheight;
	var middleslicewidth = slicewm * scale_x;
	var middlesliceheight = slicehm * scale_y;
	
	var xiter = 0, yiter = 0;
	
	while(middleleftwidht > middleslicewidth)
	{
		middleleftwidht -= middleslicewidth;
		xiter++;
	}
	
	while(middleleftheight > middlesliceheight)
	{
		middleleftheight -= middlesliceheight;
		yiter++;
	}
	
	var middlexpercent = middleleftwidht / middleslicewidth;
	var middleypercent = middleleftheight / middlesliceheight;
	
	var i,j;
	for(i = 0; i < xiter+1; i++)
	{
		for(j = 0; j < yiter+1; j++)
		{
			if(i == xiter && j == yiter)
			{
				draw_sprite_part_ext(sprite,frame,slicewtl,slicehtl,slicewm*middlexpercent,slicehm*middleypercent,p1x+i*middleslicewidth,p1y+j*middlesliceheight,scale_x,scale_y,c_white,alpha);
			}
			else if (i == xiter)
			{
				draw_sprite_part_ext(sprite,frame,slicewtl,slicehtl,slicewm*middlexpercent,slicehm,p1x+i*middleslicewidth,p1y+j*middlesliceheight,scale_x,scale_y,c_white,alpha);
			}
			else if (j == yiter)
			{
				draw_sprite_part_ext(sprite,frame,slicewtl,slicehtl,slicewm,slicehm*middleypercent,p1x+i*middleslicewidth,p1y+j*middlesliceheight,scale_x,scale_y,c_white,alpha);
			}
			else
			{
			draw_sprite_part_ext(sprite,frame,slicewtl,slicehtl,slicewm,slicehm,p1x+i*middleslicewidth,p1y+j*middlesliceheight,scale_x,scale_y,c_white,alpha);
			}
		}
	}
	#endregion
	
	#region edges
	//top
	var topleftwidth = (pos_x+wscl-scale_x*slicewtr) - (pos_x + slicewtl*scale_x);
	var top_iter = 0;
	var slice_width = slicewt * scale_x;
	while(slice_width < topleftwidth)
	{
		draw_sprite_part_ext(sprite,frame,slicewtr,0,slicewt,sliceht,p1x+top_iter*slice_width,pos_y,scale_x,scale_y,c_white,alpha);
		topleftwidth -= slice_width;
		top_iter++;
	}
	
	var percentxtop = topleftwidth/slice_width;
	draw_sprite_part_ext(sprite,frame,slicewtr*1,0,slicewt*percentxtop,sliceht,p1x+top_iter*slice_width,pos_y,scale_x,scale_y,c_white,alpha);
	
	//bottom
	var bottomleftwidth = (pos_x+wscl-scale_x*slicewbr) - (pos_x + slicewbl*scale_x);
	var bottom_iter = 0;
	slice_width = slicewb * scale_x;
	while(slice_width < bottomleftwidth)
	{
		draw_sprite_part_ext(sprite,frame,slicewtr*1,slicehtl+slicehm,slicewb,slicehb,p1x+bottom_iter*slice_width,p2y,scale_x,scale_y,c_white,alpha);
		bottomleftwidth -= slice_width;
		bottom_iter++;
	}
	
	var percentxbottom = bottomleftwidth/slice_width;
	draw_sprite_part_ext(sprite,frame,slicewtr*1,slicehtl+slicehm,slicewb*percentxbottom,slicehb,p1x+bottom_iter*slice_width,p2y,scale_x,scale_y,c_white,alpha);
	
	//left
	var leftleftheight = (pos_y+hscl-scale_y*slicehbl) - (pos_y + slicehtl*scale_y);
    var left_iter = 0;
	var slice_height = slicehl * scale_y;
	while(slice_height < leftleftheight)
	{
		draw_sprite_part_ext(sprite,frame,0,slicehtl*1,slicewl,slicehl,pos_x,p1y+left_iter*slice_height,scale_x,scale_y,c_white,alpha);
		leftleftheight -= slice_height;
		left_iter++;
	}
	
	var percentyleft = leftleftheight/slice_height;
	draw_sprite_part_ext(sprite,frame,0,slicehtl*1,slicewl,slicehl*percentyleft,pos_x,p1y+left_iter*slice_height,scale_x,scale_y,c_white,alpha);
	
	//right
	var rightleftheight = (pos_y+hscl-scale_y*slicehbr) - (pos_y + slicehtr*scale_y);
    var right_iter = 0;
	slice_height = slicehr * scale_y;
	while(slice_height < rightleftheight)
	{
		draw_sprite_part_ext(sprite,frame,slicewtl+slicewt,slicehtr*1,slicewr,slicehr,p2x,p1y+right_iter*slice_height,scale_x,scale_y,c_white,alpha);
		rightleftheight -= slice_height;
		right_iter++;
	}
	
	var percentyright = rightleftheight/slice_height;
	draw_sprite_part_ext(sprite,frame,slicewtl+slicewt,slicehtr*1,slicewr,slicehr*percentyright,p2x,p1y+right_iter*slice_height,scale_x,scale_y,c_white,alpha);
	#endregion	
	
	#region corners
	//top right
	//changes here. left/top edited, w/h edited. position edited
	draw_sprite_part_ext(sprite,frame,slicewtl+slicewt,0,slicewtr,slicehtr,pos_x+wscl-scale_x*slicewtr,pos_y,scale_x,scale_y,c_white,alpha);
	//bottom left
	draw_sprite_part_ext(sprite,frame,0,slicehtl+slicehl,slicewbl,slicehbl,pos_x,pos_y+hscl-scale_y*slicehbl,scale_x,scale_y,c_white,alpha);
	//bottom right
	draw_sprite_part_ext(sprite,frame,slicewtl+slicewt,slicehtl+slicehl,slicewbr,slicehbr,p2x,p2y,scale_x,scale_y,c_white,alpha);
	//top left
	draw_sprite_part_ext(sprite,frame,0,0,slicewtl,slicehtl,pos_x,pos_y,scale_x,scale_y,c_white,alpha);
	#endregion
}