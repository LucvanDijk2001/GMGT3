/// @description Insert description here
// You can write your code in this editor
customerTimer--;

if(customerTimer <= 0)
{
	if(instance_exists(obj_textbox))
	{
		with(obj_textbox)
		{
			instance_destroy();	
		}
	}
	customerTimer = customerTime*global.spawnmult;	
	global.spawnmult -= 0.01;
	global.spawnmult = clamp(global.spawnmult,0.3,1);
	global.SpocPack_dialogue_default_text_speed = global.starttextspeed * (2-global.spawnmult)
	scr_check_dialogue_init();
	
	with(instance_create_layer(0,0,"Instances",obj_textbox))
	{
		var c1 = irandom(4);
		global.speaksound = c1;
		Obj_customer.move = true;
		Obj_customer.image_index = c1;
		textbox_img = 0;
		
		var animals;
		animals[0] = "DUCK";
		animals[1] = "CAMEL";
		animals[2] = "GOAT";
		
		var types;
		types[0] = "DEMONIC";
		types[1] = "ABYSSAL";
		types[2] = "VOID";
		types[3] = "BADASS";
		types[4] = "CREEPY";
		types[5] = "MUTANT";
		
		var r1 = irandom(2);
		var r2 = irandom(5);
		
		var c = c_yellow;
		var cs = c_yellow;
		
		switch(r2)
		{
			case 0: c = c_red; cs = c_maroon; break;
			case 1: c = c_aqua; cs = c_purple; break;
			case 2: c = c_dkgray; cs = c_black; break;
			case 3: c = c_orange; cs = c_red; break;
			case 4: c = c_silver; cs = c_dkgray; break;
			case 5: c = c_lime; cs = c_green; break;
		}
		
		var w1 = animals[r1];
		var w2 = types[r2];
		var w1l = string_length(w1);
		var w2l = string_length(w2);
		
		scr_set_completable(false);
		var w1s;
		var w2s;
		
		switch(irandom(4))
		{
		 case 0:
			var w1s = 11;
			var w2s = w1s+w1l+73;//71
			scr_text("HERE IS MY "+w1+". IT LOOKS TOO REGULAR, PLEASE APPLY SOME GLOBULORD MAGIC TO MAKE IT LOOK " + w2 + "!");
		 break;
		 
		 case 1:
			var w1s = 8;
			var w2s = w1s+w1l+21;//71
			scr_text("UGH! MY "+w1+" NEEDS TO BE WAY MORE "+w2+"! GO FIX IT FOR ME GLOBULORD!");
		 break;
		 
		 case 2:
			var w1s = 20;
			var w2s = w1s+w1l+25;//71
			scr_text("I HATE THE WAY THIS "+w1+" LOOKS! HE DOESN'T FIT MY "+w2+" VIBE AT ALL! GLOBULORD FIXES?");
		 break;
		 
		 case 3:
			var w1s = 31;
			var w2s = w1s+w1l+34;//71
			scr_text("HELP ME OH GREAT GLOBULORD! MY "+w1+" NEEDS TO BE REVAMPED TO LOOK MORE "+w2+"!");
		 break;
		 
		 case 4:
			var w1s = 37;
			var w2s = w1s+w1l+7;//71
			scr_text("I *$&@($ LOVE GLOBULORD! **%& @#$%^& "+w1+"! ((*%& "+w2+"! I LOOOOOVE GLOB!");
		 break;
		}
		scr_text_color(w1s,w1s+w1l,c_yellow,c_yellow,c_yellow,c_yellow);
		scr_text_wave(w1s,w1s+w1l,8,1);
		scr_text_shadow(w1s,w1s+w1l,c_orange,0.5,0.5);
		scr_text_color(w2s,w2s+w2l,c,c,c,c);
		scr_text_wave(w2s,w2s+w2l,8,1);
		scr_text_shadow(w2s,w2s+w2l,cs,0.5,0.5);
		
		var creature = instance_create_layer(x,y,"Instances_5",obj_creaturebase);
		creature.image_index = r1; 
		creature.passtype = r2;
		
	}
}