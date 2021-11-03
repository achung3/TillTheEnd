/// @description Insert description here
// You can write your code in this editor

BossMovement();
BossAnimation();

if (distance_to_object(objknight) > 130)
{
//idle
hsp = 0 ;

}
else if (distance_to_object(objknight) < 100)
{
//chase

direction  = sign(objknight.x - x);// point_direction(x,y,objknight.x,objknight.y);
hspeed = direction * 2;
vsp = min (7,vsp + gravity);

}


