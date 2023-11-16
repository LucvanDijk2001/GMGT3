/// @description Insert description here
// You can write your code in this editor
if(animalspawns > 0)
{
	spawnTimer--;
	if(spawnTimer <= 0)
	{
		spawnTime *= 0.95;
		spawnTimer += spawnTime;
		
		var redraw = instance_create_layer(choose(-40,380),random_range(0,340),layer,obj_creatureReVisual);
		redraw.xto = random_range(30,310);
		redraw.yto = random_range(30,240);
		redraw.image_index = global.createdAnimals[currentanim].animalindex;
		redraw.animalsprite = global.createdAnimals[currentanim].animalsprite;
		redraw.itemsprites = global.createdAnimals[currentanim].itemsprites;
		redraw.itemxs = global.createdAnimals[currentanim].itemx;
		redraw.itemys = global.createdAnimals[currentanim].itemy;
		redraw.itemrots = global.createdAnimals[currentanim].itemrot;
		redraw.itemflips = global.createdAnimals[currentanim].itemflip;
		
		currentanim++;
		animalspawns--;
	}
}