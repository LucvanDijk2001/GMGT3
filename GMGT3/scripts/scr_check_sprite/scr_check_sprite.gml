//used in different scripts to see if passed argument is valid
function scr_check_sprite(sprite){
	if(!sprite_exists(sprite))
	{
		show_error("Something went wrong while trying to read the sprite... are you sure you passed in a sprite?",true);
	}
}