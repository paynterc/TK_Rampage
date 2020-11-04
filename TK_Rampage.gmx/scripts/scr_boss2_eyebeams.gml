/// Move
image_speed = .25;
if(bbr>=global.bound_r){
    dir = -1;
}else if(bbl<=global.bound_l){
    dir = 1;
}

x+= (movespeed/2) * dir;

