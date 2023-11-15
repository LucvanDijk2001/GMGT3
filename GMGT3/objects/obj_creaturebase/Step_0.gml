/// @description Insert description here
// You can write your code in this editor
x+=global.creaturespeed;

if(x > 430)
{
	var pass = false;
	var passscore = 2;
	switch(passtype)
	{
	 case 0:
	  if(demonic > passscore){pass = true;}
	 break;
	 
	 case 1:
	  if(abyssal > passscore){pass = true;}
	 break;
	 
	 case 2:
	  if(void > passscore){pass = true;}
	 break;
	 
	 case 3:
	  if(badass > passscore){pass = true;}
	 break;
	 
	 case 4:
	  if(creepy > passscore){pass = true;}
	 break;
	 
	 case 5:
	  if(mutant > passscore){pass = true;}
	 break;
	}
	
	if(pass)
	{
		var sb = instance_create_layer(x,y,"Itemspawnlayer",obj_scoreblob);
		sb.scr = 100;
	}
	if(!pass)
	{
		if(instance_exists(obj_blobulordlife))
		{
		var sb = instance_create_layer(x,y,"Itemspawnlayer",obj_lifeblob);
		}
		//global.score = clamp(global.score,0,10000000);
	}
	
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