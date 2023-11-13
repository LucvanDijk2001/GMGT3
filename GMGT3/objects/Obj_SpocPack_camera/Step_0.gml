//move to "TO" positon, zoom and rotation
global.SpocPack_camera_x += (global.SpocPack_camera_xto - global.SpocPack_camera_x)/global.SpocPack_camera_lerp_speed;
global.SpocPack_camera_y += (global.SpocPack_camera_yto - global.SpocPack_camera_y)/global.SpocPack_camera_lerp_speed;
global.SpocPack_camera_zoom += (global.SpocPack_camera_zoom_to - global.SpocPack_camera_zoom)/global.SpocPack_camera_zoom_lerp_speed;
global.SpocPack_camera_rotation += (global.SpocPack_camera_rotation_to - global.SpocPack_camera_rotation)/global.SpocPack_camera_rotation_lerp_speed;

//set camera position
x = global.SpocPack_camera_x;
y = global.SpocPack_camera_y;

//set new camera view
var vm = matrix_build_lookat(x,y,-10,x,y,0,dsin(global.SpocPack_camera_rotation),dcos(global.SpocPack_camera_rotation),0);
var pm = matrix_build_projection_ortho(global.SpocPack_camera_width/global.SpocPack_camera_zoom,global.SpocPack_camera_height/global.SpocPack_camera_zoom,1,10000);
camera_set_view_mat(camera,vm);
camera_set_proj_mat(camera,pm);
