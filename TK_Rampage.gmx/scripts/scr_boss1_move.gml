/// Move
if(bbr>=global.bound_r){
    dir = -1;
}else if(bbl<=global.bound_l){
    dir = 1;
}

x+=movespeed * dir;
