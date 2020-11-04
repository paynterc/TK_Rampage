if(instance_exists(obj_spawn_control)){
    obj_spawn_control.state = spawnStates.bossExploding;
}

var bossDead = instance_create(x,y,obj_boss_explode);// sound only
bossDead.sprite_index = sprite_index;
bossDead.image_speed = image_speed;

var expldr = instance_create(x,y,obj_exploder);
with(expldr){
    event_user(0);
}

audio_stop_sound(snd_ef_bosslaser1);

instance_destroy();// Important. Don't want this script to repeat.
