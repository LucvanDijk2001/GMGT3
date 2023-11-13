//this object gets used in both example rooms! nothing changes! this shows exactly how these GUI scripts work!

//functions for GUI draw with comparison
//Draw coordinates are in room coordinates! not screen space coordinates!
draw_set_valign(fa_top);
#region
nine_slice_frame += delta_time/1000000*nine_slice_speed;
#endregion

draw_set_halign(fa_left);
var box_width = 48;
var box_height = 24;
var box_width_2 = 48;
var box_height_2 = 36;
var border_pixel_width = 3; //border width for gui box with border (in pixels relative to camera resolution!)
var text_padding = 2; //text padding from border (in pixels relative to camera resolution);
var sx = 64;
var sy = 40;

//draw a box in world coordinates with width/height relative to camera resolution
scr_GUI_box(x-sx*2,y-sy*4,box_width,box_height,c_red); 

//draw a box with border in world coordinates with width/height relative to camera resolution
scr_GUI_box_border(x-sx*1,y-sy*4,box_width,box_height,border_pixel_width,c_red,c_maroon); 

//draw a box with border and text in world coordinates with width/height relative to camera resolution
scr_GUI_box_border_text(x,y-sy*4,box_width,box_height,border_pixel_width,c_red,c_maroon,"hello. i am some text",text_padding,c_white,.3,16); 

//draw box using image in world coordinates with width/height relative to camera resolution using repeat image mode
scr_GUI_box_image(x-sx*2,y-sy*3,box_width,box_height,spr_example_texture,SpocPack_im.im_repeat); 

//draw box using image in world coordinates with width/height relative to camera resolution using stretch image mode
scr_GUI_box_image(x-sx*1,y-sy*3,box_width,box_height,spr_example_texture,SpocPack_im.im_stretch); 

//draw a non scaled 9slice (meaning the sprite pixels won't match camera resolution)
scr_GUI_box_9slice(x-sx*2,y-sy*2,box_width,box_height,spr_example_9slice,nine_slice_frame); //<--- frame is set manually, see create event as to why

//same as above but with different dimensions
scr_GUI_box_9slice(x-sx*1,y-sy*2,box_width_2,box_height_2,spr_example_9slice,nine_slice_frame);// ^^^^^^^^^^^^^^^^^^^^^^^^^

//manual 9slice box (this one WILL draw with matching pixel size compared to camera resolution)
scr_GUI_box_9slice_manual(x-sx*2,y-sy*1,box_width,box_height,spr_example_9slice_manual,2,2,3,2,nine_slice_frame);//^^^^^^^^

//same as above but with different dimensions
scr_GUI_box_9slice_manual(x-sx*1,y-sy*1,box_width_2,box_height_2,spr_example_9slice_manual,2,2,3,2,nine_slice_frame);//^^^^^^^^

//some text
scr_GUI_draw_text_ext_transformed(x+16,y-8,"all of these are drawn in camera space on GUI, instead of window space!",16,256,.3,.3);