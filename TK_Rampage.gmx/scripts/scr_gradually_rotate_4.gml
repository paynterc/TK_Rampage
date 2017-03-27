/// Gradually rotate with 
//scr_gradually_rotate_4(target, rotationspeed, accuracy)
// This gives sort of a tank-like rotation. We lose the gradual deceleration
var tgt = argument0;
var turn_spd = argument1;
var accuracy = argument2;

var cur_speed;

cur_speed = speed;
speed = 0;
mp_potential_settings(turn_spd, 0, 0, true);
mp_potential_step(tgt.x, tgt.y, 0, false);
image_angle = direction;


speed = cur_speed;

var pd = point_direction(x,y,tgt.x,tgt.y);
angleDiff = angle_difference(pd, image_angle);

