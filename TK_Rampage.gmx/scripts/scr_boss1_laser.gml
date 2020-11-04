/// Move
if(bbr>=global.bound_r){
    dir = -1;
}else if(bbl<=global.bound_l){
    dir = 1;
}

x+= (movespeed/2) * dir;

//
var hitobject = collision_line(x,y,x,room_height,obj_smashable,false,true); 
if(hitobject!=noone && hitobject.state != STATE_GB_EXPLODING){
    hitpoint = scr_raycast(x,y,x,room_height,hitobject);// This will return an array with x,y coords
    hitobject.hp--;
    if(hitpoint!=noone){
        //spark.x = hitpoint[0];
        //spark.y = hitpoint[1];
        //spark.active = 1;
    }
}else{
    hitpoint = noone;
}

if(instance_exists(obj_player)){
    if(hitobject!=noone && hitobject.y<obj_player.y){
        //no hit
    }else{
        var hitplayer = collision_line(x,y,x,room_height,obj_player,false,true);
        if(hitplayer){
            obj_player.hp--;
        }
    }
}
