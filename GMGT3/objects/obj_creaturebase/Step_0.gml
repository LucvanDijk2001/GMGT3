/// @description Insert description here
// You can write your code in this editor
if(!global.lost)
{
x+=global.creaturespeed;
}

if(x > 415)
{
	if(!scored)
	{
		scored = true;
		var pass = false;
		var passscore = 2;
		var wow = false;
		var wowscore = 4;
		switch(passtype)
		{
		 case 0:
		  if(demonic > passscore){
			  pass = true;
			  if(demonic > wowscore){
				  wow = true;
			  }
		  }
		 break;
	 
		 case 1:
		  if(abyssal > passscore){
			  pass = true;
			  if(abyssal > wowscore){
				  wow = true;
			  }
			}
		 break;
	 
		 case 2:
		  if(void > passscore){
			  pass = true;
			  if(void > wowscore){
				  wow = true;
			  }
		  }
		 break;
	 
		 case 3:
		  if(badass > passscore){
			  pass = true;
			  if(badass > wowscore){
				  wow = true;
			  }
		  }
		 break;
	 
		 case 4:
		  if(creepy > passscore){
			  pass = true;
			  if(creepy > wowscore){
				  wow = true;
			  }
		  }
		 break;
	 
		 case 5:
		  if(mutant > passscore){
			  pass = true;
			  if(mutant > wowscore){
				  wow = true;
			  }
		  }
		 break;
		}
	
		if(pass)
		{
			var sb = instance_create_layer(x,y,"Itemspawnlayer",obj_scoreblob);
			if(wow){
				audio_play_sound(snd_wow, 1, false);
				sb.scr = 250;
				}
			else{
				audio_play_sound(snd_correct, 1, false);
				sb.scr = 100;
				}
	

		}
	
		if(!pass)
		{
			audio_play_sound(snd_wrong, 1, false);
			if(instance_exists(obj_blobulordlife))
			{
			var sb = instance_create_layer(x,y,"Itemspawnlayer",obj_lifeblob);
			}
			//global.score = clamp(global.score,0,10000000);
		}
	}
	
	if(x > 430)
	{
		array_push(global.createdAnimals,anim);
		for(var i = 0; i < array_length(decos); i++)
		{
			with(decos[i])
			{
			instance_destroy();	
			}
		}
		instance_destroy();
	}
}