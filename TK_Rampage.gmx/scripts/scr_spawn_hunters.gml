///scr_spawn_hunters()
var hunter = choose(obj_heavy, obj_commando, obj_agent, obj_billy);
//var hunter = choose(obj_billy);
var wave;
for(var i = 0; i<2; i++){
    wave = instance_create(0,0,obj_wave_spawner);
    wave.e_count = 1;// Number of enemy pairs. Each pair will move in a mirror-image pattern.
    wave.ob = hunter;
    with(wave){
        event_user(0);// Trigger wave
    }
}
