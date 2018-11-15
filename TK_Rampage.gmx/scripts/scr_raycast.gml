///scr_raycast(startX, startY, endX, endY, target)

//Establish argument variables
var startX = argument0;
var startY = argument1;
var endX = argument2;
var endY = argument3;
var target = argument4;

//Establish direction and max distance to raycast
var len = 0;
var dir = point_direction(startX, startY, endX, endY);
var maxd = point_distance(startX, startY, endX, endY);

//Begin raycast loop
while(len < maxd) {
    var castX = startX + lengthdir_x(len, dir);
    var castY = startY + lengthdir_y(len,dir);
    if(collision_point(castX, castY, target, false, false)) {
        hitpoint[0]= castX;
        hitpoint[1] = castY;
        return hitpoint;
    }

    len++;
}

//If the raycast hit nothing, return false
return noone;
