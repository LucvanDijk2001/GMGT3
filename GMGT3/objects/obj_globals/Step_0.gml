/// @description Insert description here
// You can write your code in this editor
if(global.lost)
{
losttimer--;
if(losttimer <= 0)
{
	if(spawnfade)
	{
		instance_create_layer(-20,-20,"EffectLayer",obj_fadeout);
	    spawnfade = false;	
	}
}
}