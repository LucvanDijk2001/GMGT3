/// @description Insert description here
// You can write your code in this editor
if(!spawnItems)
{
	if(instance_number(obj_itembase) < 25 && !instance_exists(Obj_itemSpawn))
	{
	 spawnItems = true;	
	 itemsToSpawn = itemSpawns;
	}
}

if(spawnItems)
{
	if(itemsToSpawn > 0)
	{
		spawnTimer--;
		if(spawnTimer <= 0)
		{
			itemsToSpawn--;
			spawnTimer += spawnTime;
			instance_create_layer(-40,370,"Instances",choose(
			obj_shoe,
			obj_banan,
			obj_glasses
			));
		}
	}
	else
	{
	spawnItems = false;	
	}
}