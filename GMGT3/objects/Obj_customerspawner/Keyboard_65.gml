/// @description Insert description here
// You can write your code in this editor
if(!instance_exists(obj_textbox))
{
	scr_check_dialogue_init();
	
	with(instance_create_layer(0,0,"Instances",obj_textbox))
	{
		textbox_img = 0;
		
		var animals;
		animals[0] = "DOG";
		animals[1] = "DUCK";
		animals[2] = "CAMEL";
		animals[3] = "GOAT";
		animals[4] = "HORSE";
		animals[5] = "FISH";
		animals[6] = "LLAMA"
		
		var types;
		types[0] = "COOL";
		types[1] = "SCARY";
		types[2] = "DASHING";
		types[3] = "CUTE";
		
		var w1 = animals[irandom(6)];
		var w2 = types[irandom(3)];
		var w1l = string_length(w1);
		var w2l = string_length(w2);
		
		var w1s = 26;
		var w2s = w1s+w1l+60;//71
		scr_text("holy shot, please give my "+w1+" sunglasses. He needs to get that moolah cash. make him look " + w2 + "!");
		scr_text_color(w1s,w1s+w1l,c_yellow,c_yellow,c_yellow,c_yellow);
		scr_text_wave(w1s,w1s+w1l,8,1);
		scr_text_shadow(w1s,w1s+w1l,c_orange,0.5,0.5);
		scr_text_color(w2s,w2s+w2l,c_yellow,c_yellow,c_yellow,c_yellow);
		scr_text_wave(w2s,w2s+w2l,8,1);
		scr_text_shadow(w2s,w2s+w2l,c_orange,0.5,0.5);
	}
}