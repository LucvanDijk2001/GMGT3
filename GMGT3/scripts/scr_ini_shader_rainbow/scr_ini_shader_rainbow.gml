function scr_ini_shader_rainbow(spd = 1.0, section = 0.5, saturation = 0.7, brightness = 0.8, mix = 0.5){
	_uniUV = shader_get_uniform(SHD_Rainbow,"u_uv");
	_uniTime = shader_get_uniform(SHD_Rainbow,"u_time");
	_uniSpeed      = shader_get_uniform(SHD_Rainbow, "u_speed"); //scroll speed of rainbow effect
	_uniSection    = shader_get_uniform(SHD_Rainbow, "u_section"); //amount of color spectrum to show at once (1 is full)
	_uniSaturation = shader_get_uniform(SHD_Rainbow, "u_saturation"); //saturation of the rainbow
	_uniBrightness = shader_get_uniform(SHD_Rainbow, "u_brightness"); //rightness of the rainbow
	_uniMix        = shader_get_uniform(SHD_Rainbow, "u_mix"); //mix between original and shader (1 is full rainbow)

	_time  = 0;
	_speed = spd;
	_section = section;
	_saturation = saturation;
	_brightness = brightness;
	_mix = mix;
}