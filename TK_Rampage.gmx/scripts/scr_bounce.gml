///scr_bounce(obj,other)
var obj = argument0;
var otherObj = argument1;

var objBottom = obj.sprite_height - sprite_get_yoffset(obj.sprite_index);
var objTop = obj.sprite_height - objBottom;
var otherBottom = otherObj.sprite_height - sprite_get_yoffset(otherObj.sprite_index);
var otherTop = otherObj.sprite_height - otherBottom;

if(obj.y < otherObj.y - otherTop || obj.y > otherObj.y+otherBottom){
    obj.vspeed = obj.vspeed*-1;
}else{
    obj.hspeed = obj.hspeed*-1;
}

