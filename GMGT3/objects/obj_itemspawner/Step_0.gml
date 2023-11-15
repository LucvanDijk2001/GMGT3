/// @description Insert description here
// You can write your code in this editor
if(!spawnItems)
{
	if(instance_number(obj_itembase) < 60 && !instance_exists(Obj_itemSpawn))
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
			obj_anglerteeth,
			obj_beastmouth,
			obj_bloodeye,
			obj_boots,
			obj_bugeye,
			obj_demoneye,
			obj_demonfeet,
			obj_demontail,
			obj_demonthorn,
			obj_fin,
			obj_gaper,
			obj_guhmouth,
			obj_joy,
			obj_mandibles,
			obj_mutantarm,
			obj_peereyes,
			obj_pumpkin,
			obj_pus,
			obj_shades,
			obj_skateboard,
			obj_spike,
			obj_spikecap,
			obj_stretcheye,
			obj_tendrileye,
			obj_tentacle,
			obj_thorns,
			obj_voidhole,
			obj_voidholes,
			obj_voidmouth,
			obj_whitehorn
			));
		}
	}
	else
	{
	spawnItems = false;	
	}
}