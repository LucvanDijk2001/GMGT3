//setup for manual 9slice (adds some variables)
scr_GUI_box_9slice_manual_ini();

//sets manual 9slice animation speed in fps (default = 6)
scr_GUI_box_9slice_manual_set_animation_speed(6);

//own frame adder cause i'm drawing multiple 9slices in 1 object, 
//if i don't do this the animation speed per 9slice box will double
nine_slice_frame = 0;
nine_slice_speed = 6;