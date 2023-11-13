/// @description consume
growth += 1;

if(growth == growth_threshold){
	// grow a lim
	growth = 0;
	growth_threshold += growth_threshold_increase;
}

