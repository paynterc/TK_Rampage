/// scr_make_waypoints(num)
var num = argument0;
ob_w = sprite_width;// Object width
ob_h = sprite_height;// Object height
ob_xb = ob_w /2; // Object xbound
ob_yb = ob_h /2; // Object ybound
range_full = global.bound_r - global.bound_l;

var xoffset;
var ypoint;
for(var i = 0; i < num; i++){
    xoffset = irandom_range(ob_xb,range_full-ob_xb);
    ypoint = irandom_range( global.bound_t + ob_yb, global.bound_b - sprite_height );

    waypoints[i,0]=global.bound_l + xoffset;
    waypoints[i,1]=ypoint;
  
}
