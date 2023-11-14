/// @description Insert description here
// You can write your code in this editor
draw_sprite(animalsprite,image_index,x,y);

for(var i = 0; i < array_length(itemsprites); i++)
{
	var xscale = 1;
	if(itemflips[i]){scale = -1;}
	draw_sprite_ext(itemsprites[i],0,x-itemxs[i],y-itemys[i],xscale,1,itemrots[i],c_white,1);	
}