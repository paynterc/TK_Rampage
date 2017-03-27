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

var objToTurn = argument0;
var targetObject = argument1;
var turnSpeed = argument2;//1-10
var accuracy = clamp(argument3, 0.05, 0.95);// Don't want perfect accuracy or perfect inaccurac

if(!instance_exists(objToTurn)){
    return -1;
}

if(!instance_exists(targetObject)){
    return -1;
}

// Reverse nomalize accuracy for calculations
accuracy = abs(accuracy - 1.0);
turnSpeed = turnSpeed / 100000;

// Get the target direction and facing direction
var targetDir = point_direction(x, y, targetObject.x, targetObject.y);
var facingDir = objToTurn.image_angle;

// Calculate the difference between target direction and facing direction
facingMinusTarget = facingDir - targetDir;
angleDiff = facingMinusTarget;
if(abs(facingMinusTarget) > 180)
{
    if(facingDir > targetDir)
    {
        angleDiff = -1 * ((360 - facingDir) + targetDir);
    }
    else
    {
        angleDiff = (360 - targetDir) + facingDir;
    }
}

// Gradually rotate object
var leastAccurateAim = 30;
if(angleDiff > leastAccurateAim * accuracy)
{
    objToTurn.image_angle -= turnSpeed * delta_time;
}
else if(angleDiff < leastAccurateAim * accuracy)
{
    objToTurn.image_angle += turnSpeed * delta_time;
}

