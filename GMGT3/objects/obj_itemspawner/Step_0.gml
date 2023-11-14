/// @description Insert description here
// You can write your code in this editor
if(!spawnItems)
{
	if(instance_number(obj_itembase) < 10 && !instance_exists(Obj_itemSpawn))
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
			instance_create_layer(random_range(10,330),random_range(10,160),"Itemspawnlayer",Obj_itemSpawn);
		}
	}
	else
	{
	spawnItems = false;	
	}
}