/// Find the closest instance of a given object to the given source
// scr_get_closest(ObjectTarget, ObjSource, RangeLimit);

var obj_target = argument0;
var obj_source = argument1;
var range = argument2; //set this to -1 for infinite range
closest = noone;
var this_obj = noone;
var closest_range = 0;
var this_range = 0;
for(var i = 0; i < instance_number(obj_target); i++) {
    this_obj = instance_find(obj_target,i);
    this_range = point_distance(obj_source.x,obj_source.y,this_obj.x,this_obj.y);
    if(this_range<range || range<0){
        if(closest==noone){
            closest = this_obj;
            closest_range = this_range;
        }else if(this_range<closest_range){
            closest = this_obj;
            closest_range = this_range;
        }
    }
    
}

return closest;

