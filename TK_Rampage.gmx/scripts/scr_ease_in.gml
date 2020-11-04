/// scr_ease_in(time,begin,distanceRemaining,duration)
/***
// CREATE EVENT
start = x;
destination = x+512;
duration = 60;//frames
time=0;// Increment

// STEP EVENT
if(time<duration){
    x = scr_ease_in(time,start,dest-start,duration);
    time++;
}

***/
var t = argument[0];
var b = argument[1];// begin location
var c = argument[2];// Change (distance remaining)
var d = argument[3];

t /= d;

return c*t*t*t+b;


