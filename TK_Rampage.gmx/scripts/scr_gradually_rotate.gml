// gradually_turn.gml
// --------
// Gradually turns an object towards its target
//

// FORMAT:
// gradually_turn(objToTurn, target, turnSpeed, accuracy);
//
// <objToTurn> takes an object
// <target> takes an object
// <turnSpeed> takes a number
// <accuracy> takes a number between 0 and 1

var ob = argument0;
var tg = argument1;
var rspd = argument2;//1-10
var accy = clamp(argument3,.05,10);// Don't want perfect accuracy or perfect inaccuracy

var pd = point_direction(ob.x,ob.y,tg.x,tg.y);
var dd = angle_difference(pd, ob.image_angle);
ob.image_angle += sin(degtorad(dd)) * rspd;

return dd;

