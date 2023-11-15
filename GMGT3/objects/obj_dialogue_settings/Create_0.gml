/// @description Setup for custom fonts and dialogue settings
global.SpocPack_font_main = font_add_sprite(spr_font_default,32,true,1); //default font for textbox 

//used for error checks in scripts that edit values in here (should not be touched)
global.SpocPack_dialogue_initalized = true;

//default values
global.SpocPack_dialogue_background_9slice        = spr_textbox_default; //sprite to use as 9slice
global.SpocPack_dialogue_background_9slice_top    = 4;                   //|
global.SpocPack_dialogue_background_9slice_bottom = 4;					 //|
global.SpocPack_dialogue_background_9slice_left   = 4;					 //\/
global.SpocPack_dialogue_background_9slice_right  = 4;				     //9slice slice positions
global.SpocPack_dialogue_accept_key               = vk_space;            //dialogue continue key

//positioning
global.SpocPack_textbox_width  = 208; //width of textbox
global.SpocPack_textbox_height = 48;  //height of textbox
global.SpocPack_textbox_y      = 6;  //textbox position y
global.SpocPack_textbox_x      = 30;   //textbox position x (doesn't really get used cause of the offsets)

global.SpocPack_textbox_option_spacing =  0; //y distance between dialogue option boxes
global.SpocPack_textbox_option_border_x = 4; //text padding x for option boxes
global.SpocPack_textbox_option_border_y = 5; //text padding y for option boxes

//offsets for portraits
global.SpocPack_textbox_middle_x_pos         = 30;  //x offset for textbox no portrait
global.SpocPack_textbox_left_x_pos           = -64;  //x offset for textbox on left
global.SpocPack_textbox_left_x_pos_portrait  = 240; //x offset for portrait on right
global.SpocPack_textbox_right_x_pos          = 96;  //x offset for textbox on right
global.SpocPack_textbox_right_x_pos_portrait = 16;  //x offset for portrait on left

//text
global.SpocPack_dialogue_text_scale = 1; //text scale
global.SpocPack_dialogue_line_sep = 12 //line seperation
global.SpocPack_dialogue_default_text_speed = 2; //default text speed
global.SpocPack_dialogue_default_text_snd_delay = 5; //speed at which the speaking sound plays
global.SpocPack_dialogue_default_text_pause_time = 0.25; //pause time for things like periods, question marks, exlamation marks.

//options
global.SpocPack_dialogue_option_next     = ord("S"); //\/
global.SpocPack_dialogue_option_previous = ord("W"); //keys to switch dialogue option
global.SpocPack_dialogue_option_selector = spr_option_selector_default; //sprite of option selector

