/// @description Insert description here
// You can write your code in this editor
randomize();
global.placeDepth = 10;
global.speaksound = 0;

if(!variable_global_exists("createdAnimals"))
{
global.createdAnimals = array_create();
}
if(!variable_global_exists("score"))
{
global.score = 0;
}
else if (room == R_playertest_luc)
{
	global.score = 0;	
}

global.holdingbutton = false;
a = 0;
global.lost = false;
losttimer = 120;

spawnfade = true;
global.creaturespeed = 0.4;
global.spawnmult = 1;
if(room == R_playertest_luc)
{
global.starttextspeed = global.SpocPack_dialogue_default_text_speed;
}