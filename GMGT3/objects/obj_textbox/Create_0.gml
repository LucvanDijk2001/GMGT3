//other script set ups
scr_GUI_box_9slice_manual_ini();

scr_check_dialogue_init();

// params
textbox_width = global.SpocPack_textbox_width;
textbox_height = global.SpocPack_textbox_height;
textbox_img = 0;
textbox_img_spd = 6;
border = 8;
line_sep = global.SpocPack_dialogue_line_sep;
line_width = textbox_width-border*2;
txtb_spr[0] = global.SpocPack_dialogue_background_9slice;
txtb_9slice_top[0] = global.SpocPack_dialogue_background_9slice_top;
txtb_9slice_bottom[0] = global.SpocPack_dialogue_background_9slice_bottom;
txtb_9slice_left[0] = global.SpocPack_dialogue_background_9slice_left;
txtb_9slice_right[0] = global.SpocPack_dialogue_background_9slice_right;

speaker_sprite[0] = noone;
speaker_side[0] = 1;

//text
page = 0;
page_number = 0;
text[0] = "";
text_length[0] = string_length(text[0]);
char[0, 0] = "";
char_x[0, 0] = 0;
char_y[0, 0] = 0;
draw_char = 0;
text_spd[0] = global.SpocPack_dialogue_default_text_speed;

//options
option[0] = "";
option_link_id[0] = -1;
option_position = 0;
option_number = 0;

setup = false;

//sound
snd_delay[0] = global.SpocPack_dialogue_default_text_snd_delay;
snd_count = snd_delay[0];

//effects
scr_set_defaults_for_text();
last_free_space = 0;
text_pause_timer = 0;
text_pause_time[0] = global.SpocPack_dialogue_default_text_pause_time;

//misc
link_id = noone; //this can be set to another dialogue, if you want to continue with a different dialogue after it's done without options
external_flip = false; //if this is set to true while the textbox exists it will act like the accept key
manually_completable = true; //if this is false it means the dialogue can only be finished by an external source (for exaample the obj_external_flip_example object)

//actions
run_start_action = true;
start_action = noone;
end_action = noone;