/// @description Insert description here
// You can write your code in this editor
mu = 5;
pmx = 0;
pmy = 0;
held = false;
connected = false;
parent = noone;
flipped = false;
scl = 1;
hover = false;

audioing = false;

demonic = random(1);
abyssal = random(1);
void = random(1);
badass = random(1);
creepy = random(1);
mutant = random(1);

phy_active = false;
left = choose(true,false);
movetox = 0;
movetoy = 0;
if(left){phy_position_x = -40; movetox = 15; movetoy = 320;}
else{phy_position_x = 370; movetox = 325; movetoy = 320;}
phytimer = 20;

outline_init()