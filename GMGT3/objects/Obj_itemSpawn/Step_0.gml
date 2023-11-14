/// @description Insert description here
// You can write your code in this editor
if(step1)
{
	size += (sizeTo-size)/24;
}
else
{
	size += (sizeTo-size)/12;
}

rot+=3;
if(abs(sizeTo-size) < 0.1 && step1)
{
   timer--;
   if(timer <= 0)
   {
	step1 = false;
	sizeTo = 0;
	instance_create_layer(x,y,"Instances",choose(
	obj_banan,
	obj_glasses,
	obj_shoe
	))
   }
}

if(abs(sizeTo-size) < 0.1 && !step1)
{
	instance_destroy();	
}