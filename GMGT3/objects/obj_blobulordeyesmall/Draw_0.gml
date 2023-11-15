/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(spr_blob_eyewhite,0,x+xoff,y+yoff,size,size,0,c_white,1);
irischangetimer--;

if(irischangetimer <= 0)
{
	irislen = random_range(irislenmin*size,irislenmax*size);
   irisdir = random(360);
  irischangetimer = random_range(irischangetimemin,irischangetimemax);
}

if(mouse_check_button(mb_left))
{
	var ndir = point_direction(x,y,mouse_x,mouse_y);
	irisxto = x + lengthdir_x(clamp(irislen,4,4),ndir);
    irisyto = y + lengthdir_y(clamp(irislen,4,4),ndir);
}
else
{
	irisxto = x + lengthdir_x(irislen,irisdir);
    irisyto = y + lengthdir_y(irislen,irisdir);
}

irisx += (irisxto-irisx)/5;
irisy += (irisyto-irisy)/5;

draw_sprite_ext(spr_blob_iris,0,irisx+xoff,irisy+yoff,size,size,0,c_white,1);