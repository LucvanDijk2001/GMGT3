/// @description Insert description here
// You can write your code in this editor
x += (xto-x)/10;
y += (yto-y)/10;

if(distance_to_point(xto,yto) < 2)
{
	if(dopart)
	{
	part_emitter_burst(sys,emit,part,30);
	dopart = false;
	}
}
var ss = 0.5;
draw_sprite_ext(spr_creaturebasetest,image_index,x,y,ss,ss,0,c_white,1);

for(var i = 0; i < array_length(itemsprites); i++)
{
	var xscale = 1;
	if(itemflips[i]){xscale = -1;}
	draw_sprite_ext(itemsprites[i],0,x-(itemxs[i]*ss),y-(itemys[i]*ss),xscale*ss,1*ss,itemrots[i],c_white,1);	
}