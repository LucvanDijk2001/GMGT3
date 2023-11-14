/// @description Insert description here
// You can write your code in this editor
anim = animal();
image_speed = 0;
decos = array_create();
function addDeco(argument0)
{
	anim.animalsprite = sprite_index;
	anim.animalindex = image_index;
	array_push(anim.itemsprites,argument0.sprite_index);
	array_push(anim.itemx,argument0.offx);
	array_push(anim.itemy,argument0.offy);
	array_push(anim.itemrot,argument0.image_angle);
	array_push(anim.itemflip,argument0.flipped);
}

passtype = 0;

demonic = 0;
abyssal = 0;
void = 0;
badass = 0;
creepy = 0;
mutant = 0;

global.creaturespeed += 0.02;

x = -60;
y = 165;