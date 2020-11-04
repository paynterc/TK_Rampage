/// scr_addkillcount()
global.killcounter ++;
if(global.killcounter > 20){
    scr_sound_service("pickup1");
    global.killcounter = 0;
    global.maxweight = min(global.maxweight+1,3);
    scr_poweralert("POWER UP!!!");
}
