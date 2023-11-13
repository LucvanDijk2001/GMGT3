/// @description set camera

//init
global.SpocPack_camera_init = true;

//camera properties
global.SpocPack_camera_height = 135; //height of camera in pixels
global.SpocPack_camera_width = 240; //width of camera in pixels
global.SpocPack_camera_lerp_speed = 8; //lerp speed for camera

global.SpocPack_camera_zoom = 1; //zoom of the camera
global.SpocPack_camera_zoom_lerp_speed = 8; //lerp speed of zooming

global.SpocPack_camera_rotation = 0; //rotation of the camera
global.SpocPack_camera_rotation_lerp_speed = 8; //lerp speed of rotating

//create a camera
camera = camera_create();

//intialize values (so it doesn't start at 0,0 and then does a quick lerp)
x = global.SpocPack_camera_width/2;
y = global.SpocPack_camera_height/2;
global.SpocPack_camera_xto = global.SpocPack_camera_width/2;
global.SpocPack_camera_yto = global.SpocPack_camera_height/2;
global.SpocPack_camera_x = global.SpocPack_camera_width/2;
global.SpocPack_camera_y = global.SpocPack_camera_height/2;
global.SpocPack_camera_zoom_to = global.SpocPack_camera_zoom;
global.SpocPack_camera_rotation_to = global.SpocPack_camera_rotation; 

//camera creation
var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0);
var pm = matrix_build_projection_ortho(global.SpocPack_camera_width,global.SpocPack_camera_height,1,10000);

//set camera view
camera_set_view_mat(camera,vm);
camera_set_proj_mat(camera,pm);
camera_set_view_size(camera,global.SpocPack_camera_width,global.SpocPack_camera_height);

//asign camera to viewport 0
view_camera[0] = camera;
