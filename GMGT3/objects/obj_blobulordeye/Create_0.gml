/// @description Insert description here
// You can write your code in this editor
xoff = 0;
yoff = 0;
irislenmin = 1;
size = random_range(0.8,1.3);
irislenmax = 6;
irischangetimemin = 5;
irischangetimemax = 75;
irislen = random_range(irislenmin,irislenmax);
irisdir = random(360);
irischangetimer = random_range(irischangetimemin,irischangetimemax);

irisxto = x;
irisyto = y;
irisx = x;
irisy = y;

veladd = 0.002;
velmax = 0.15;
diradd = 0.5;
dirmax = 5;
maxmove = 3;

vel = 0;
acc = 0;

dir = 0;
dirvel = 0;
diracc = 0;