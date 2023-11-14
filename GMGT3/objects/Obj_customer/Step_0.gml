/// @description Insert description here
// You can write your code in this editor
if(move)
{
 moveTimer--;
 if(moveTimer <= 0)
 {
  move = false;	 
  moveTimer = 250;
  var textbox = instance_find(obj_textbox,0);
	textbox.external_flip = true;
 }
}

if(move)
{
	x += (movetrueto-x)/12;	
}
else
{
	x += (movefalseto-x)/12;	
}