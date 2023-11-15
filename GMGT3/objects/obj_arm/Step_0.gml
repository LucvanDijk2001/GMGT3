/// @description 
if(!global.lost)
{
if collision_point(mouse_x, mouse_y, parent, false, true) and mouse_check_button(mb_left){
	arm_move_towards(mouse_x-lengthdir_x(12, seg_get_angle(2)-flip_*45), mouse_y-lengthdir_y(9, seg_get_angle(2)-flip_*45), grab_speed);
	hand_is_grab = 1;
	grab_speed += grab_accel;
	randomx = mouse_x;
	randomy = mouse_y;
}
else{
	hand_is_grab = 0;
	grab_speed = 1;
	arm_move_towards(randomx, randomy, 1);
	seg_apply_force(1, randomx/100, seg_get_angle(2));
}

randomaccelx += random_range(-1,1)*0.005;
randomaccelx = clamp(randomaccelx,-0.05,0.05);
randomvelx += randomaccelx;
if randomvelx >= 1 or randomvelx <= -1{ randomaccelx = randomaccelx * -1;}
randomvelx = clamp(randomvelx,-1,1);
randomx += randomvelx;
if randomx >= parent.x + 50 or randomx <= parent.x - 50 { 
	randomaccelx = randomaccelx * -1;
	randomvelx = randomvelx * -1;
	}
randomx = clamp(randomx, parent.x - 50, parent.x + 50);

randomaccely += random_range(-1,1)*0.005;
randomaccely = clamp(randomaccely,-0.05,0.05);
randomvely += randomaccely;
if randomvely >= 1 or randomvely <= -1{ randomaccely = randomaccely * -1;}
randomvely = clamp(randomvely,-1,1);
randomy += randomvely;
if randomy >= parent.y + 50 or randomy <= parent.y - 50 or randomy >= room_height - 80 { 
	randomaccely = randomaccely * -1;
	randomvely = randomvely * -1;
	}
randomy = clamp(randomy, parent.y - 50, parent.y + 50);
}
else
{
	piny += 5;
arm_relocate(pinx,piny)	
}
