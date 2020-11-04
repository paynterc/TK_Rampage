/// Spawn
state = STATE_GB_BOSS_DORMANT;
intangible=true;
x = room_width/2;
image_alpha=0;
var spawn;
var xx, yy;
for(var i=0; i<10;i++){
    xx = x+irandom_range(0,100)-50;
    yy = y+irandom_range(0,100)-50;
    spawn = instance_create(xx,yy,obj_hivemind_spawn);
}
alarm[8]=room_speed * 10;
