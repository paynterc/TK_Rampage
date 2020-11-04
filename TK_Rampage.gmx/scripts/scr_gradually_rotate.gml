// gradually_turn.gml
// --------
// Gradually turns an object towards its target
//

// FORMAT:
// gradually_turn(objToTurn, target, turnSpeed, accuracy);
//
// <objToTurn> takes an object
// <targetX> takes an int
// <targetY> takes an int
// <turnSpeed> takes a number
// <accuracy> takes a number between 0 and 1

var ob = argument0;
var tgX = argument1;
var tgY = argument2;
var rspd = argument3;//1-10
var accy = clamp(argument4,.05,10);// Don't want perfect accuracy or perfect inaccuracy

if(!instance_exists(ob)){
    return false;
}


var pd = point_direction(ob.x,ob.y,tgX,tgY);
var dd = angle_difference(pd, ob.image_angle);

//ob.image_angle += median(-.5, dd,.5);     
ob.image_angle += sin(degtorad(dd)) * rspd;

return dd;

