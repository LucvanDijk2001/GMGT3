// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_start_shader_rainbow(){
	_time += 1/room_speed;
	shader_set(SHD_Rainbow);
	var uv = sprite_get_uvs(sprite_index,image_index);
	shader_set_uniform_f(_uniUV, uv[0], uv[2]);
	shader_set_uniform_f(_uniSpeed, _speed);
	shader_set_uniform_f(_uniTime, _time);
	shader_set_uniform_f(_uniSaturation, _saturation);
	shader_set_uniform_f(_uniBrightness, _brightness);
	shader_set_uniform_f(_uniSection, _section);
	shader_set_uniform_f(_uniMix, _mix);
}