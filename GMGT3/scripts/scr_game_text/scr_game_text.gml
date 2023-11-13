//script that hold all dialogue for game, recommended to make good use of regions and tabbing
function scr_game_text(_text_id){
	
	switch(_text_id)
	{
		#region DEBUG DIALOGUES
		#region npc1
		case "npc1":
			scr_text("holy shot i'm npc1 in this game that doesn't exists", "default");
			scr_scale_text(1.5);
			scr_text_color(14,17,c_red,c_red,c_fuchsia,c_fuchsia);
			scr_text_color(37,50,c_yellow,c_green,c_lime,c_fuchsia);
			scr_text_color(27,30,c_aqua,c_aqua,c_aqua,c_aqua);
			scr_text_wave(37,50,-6,1);
			scr_text_wave(0,3,-3,3);
			scr_text_shake(0,15,1);
			scr_text("he seems confused...");
			scr_scale_text(2);
			scr_text_color(0,19,c_yellow,c_yellow,c_yellow,c_yellow);
			scr_text_wave(0,16,-6,1);
			scr_text("This is colored text...");
			scr_scale_text(3);
			scr_text_color(0,30,c_red,c_red,c_red,c_red);
			scr_text("This is wavy text...");
			scr_scale_text(1);
			scr_text_wave(0,30,-6,1);
			scr_text("This is shaky text...");
			scr_text_shake(0,30,1);
			scr_text("This is lerping text...");
			scr_text_lerp(0,30,5,3);
			scr_text("This is text with shadow...");
			scr_text_shadow(0,30,c_red,0.5,0.5);
			scr_text("This is all effects combined... with a lot of text to make it look cool, with a character speaking... yes... idk what else to say ok!!!!! i just want to make this text longer to show the whole textbox full of text! so i'm just typing more words here.","default2",-1);
			scr_text_lerp(0,300,20,5);
			scr_text_wave(0,300,-3,1);
			scr_text_shake(0,300,1);
			scr_text_color(0,300,c_purple,c_purple,c_fuchsia,c_fuchsia);
			scr_text_shadow(0,300,c_green,0.2,0.2);
			scr_text("this. text. has. a. lot! of... pauses?", "default");
			scr_text_shake(0,48,1);
			scr_text("wait if i dont exist then how am i talking...","default");
			scr_text_color(8,20,c_red,c_red,c_red,c_red);
				scr_option("you do exist!","npc1responsehappy");
				scr_option("you're right, now shut up","npc1responsesad");
		break;
		
			case "npc1responsehappy":
				scr_text("wow, that means a lot! thanks!","default_happy");
				scr_text_wave(0,45,1,1);
				scr_option("no problem!","npc1responsehappy2");
				scr_option("it was a joke..","npc1responsesad");
			break;
			
				case "npc1responsehappy2" :
					scr_text("so nice :)","default_happy");
					scr_text_wave(0,45,1,1);
				break;
			
			case "npc1responsesad":
				scr_text("that's mean!","default2",-1);
				scr_text_color(0,30,c_red,c_red,c_maroon,c_maroon);
				scr_text_shake(0,30,2);
				scr_text("they both left out of anger");
				scr_text_color(0,30,c_yellow,c_yellow,c_yellow,c_yellow);
			break;
		#endregion
		
		#region npc2
		case "npc2":
			scr_set_completable(false);
			scr_text("holy shot i'm another npc text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text text ", "default2");
			scr_text("i think i also don't exist", "default2");
			scr_text("well shit... this text can only be completed from an outside source", "default2");
			scr_text_color(13,100,c_red,c_red,c_red,c_red);
			scr_text_shadow(13,100,c_maroon,0.4,0.4);
		break;
		#endregion
		
		#region npc3
		case "npc3":
			scr_text("this dialogue will give you infinite options","default_happy");
			scr_option("ok?","npc3infinite");
			scr_option("stop the loop","npc3stop");
		break;
		
			case "npc3infinite":
				scr_text("because this one will send you back!","default2",-1);
				scr_option("back we go!","npc3");
				scr_option("stop the loop","npc3stop");
			break;
			
			case "npc3stop":
				scr_text("ok sorry....","default");
			break;
		#endregion
		#endregion
		
		#region DEFAULT CASE
		default:
			scr_text("invalid text id");
		break;
		#endregion
		
		#region user dialogue
		
		case "not_manually_completable":
			scr_set_completable(false);
			scr_text("I can't be completed by the user");
			scr_set_link_id("completed");
		break;
		
		case "completed":
			scr_text("i am being called from not_manually_completable!");
		break;
		
		#endregion

	}
	
}