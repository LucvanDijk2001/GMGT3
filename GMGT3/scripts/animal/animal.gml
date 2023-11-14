// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function animal(){
	anim = {
		animalsprite: noone,
		animalindex: 0,
		itemsprites: array_create(),
		itemx: array_create(),
		itemy: array_create(),
		itemrot: array_create(),
		itemflip: array_create()
	};
	return anim;
}