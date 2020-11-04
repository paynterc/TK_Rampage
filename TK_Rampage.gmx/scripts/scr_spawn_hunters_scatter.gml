///scr_spawn_hunters_scatter()
// Spawn hunters in a non-symetrical pattern.
var hunter = choose(obj_heavy, obj_commando, obj_agent);
for(var i=0;i<4;i++){
    var xs = irandom_range(global.bound_l+32,global.bound_r-32) // x start point
    instance_create(xs,-32,hunter);
}
