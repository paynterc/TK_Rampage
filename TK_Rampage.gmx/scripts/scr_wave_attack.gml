///scr_wave_attack()
// waveDir
// waveTimer
if(get_timer() > waveTimer){
    waveTimer = get_timer() + (1000000 * .05);
    var bullet = instance_create(x,y,obj_wave_bullet);
    bullet.direction = waveDir;
    bullet.image_angle = waveDir;
    bullet.speed = 7;
    waveDir+=360/16;
}
