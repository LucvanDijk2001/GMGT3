/// @description Insert description here
// You can write your code in this editor
customerTimer--;

if(customerTimer <= 0)
{
	customerTimer = customerTime;	
	
	scr_check_dialogue_init();
	
	with(instance_create_layer(0,0,"Instances",obj_textbox))
	{
		global.speaksound = irandom(1);
		textbox_img = 0;
		
		var animals;
		animals[0] = "DUCK";
		animals[1] = "CAMEL";
		animals[2] = "GOAT";
		
		var types;
		types[0] = "COOL";
		types[1] = "SCARY";
		types[2] = "DASHING";
		types[3] = "CUTE";
		
		var r1 = irandom(2);
		var r2 = irandom(3);
		var w1 = animals[r1];
		var w2 = types[r2];
		var w1l = string_length(w1);
		var w2l = string_length(w2);
		
		var w1s = 26;
		var w2s = w1s+w1l+60;//71
		scr_set_completable(false);
		scr_text("holy shot, please give my "+w1+" sunglasses. He needs to get that moolah cash. make him look " + w2 + "!");
		scr_text_color(w1s,w1s+w1l,c_yellow,c_yellow,c_yellow,c_yellow);
		scr_text_wave(w1s,w1s+w1l,8,1);
		scr_text_shadow(w1s,w1s+w1l,c_orange,0.5,0.5);
		scr_text_color(w2s,w2s+w2l,c_yellow,c_yellow,c_yellow,c_yellow);
		scr_text_wave(w2s,w2s+w2l,8,1);
		scr_text_shadow(w2s,w2s+w2l,c_orange,0.5,0.5);
		
		var creature = instance_create_layer(x,y,"Instances_5",obj_creaturebase);
		creature.image_index = r1; 
		Obj_customer.move = true;
	}
}