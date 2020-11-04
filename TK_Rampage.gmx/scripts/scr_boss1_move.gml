/// Move

if(x >= room_width -128){

    dir = -1;
    
}else if(x <= 128){

    dir = 1;
}

x+=movespeed * dir;
