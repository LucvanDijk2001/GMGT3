/// @description Insert description here
// You can write your code in this editor
if(move)
{
 moveTimer--;
 if(moveTimer <= 0)
 {
  move = false;	 
  moveTimer = 350*global.spawnmult;
  
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